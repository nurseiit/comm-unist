package org.altbeacon.beacon;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothDevice;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.InputDeviceCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BeaconParser {
    private static final Pattern D_PATTERN = Pattern.compile("d\\:(\\d+)\\-(\\d+)([bl]?)");
    private static final char[] HEX_ARRAY = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final Pattern I_PATTERN = Pattern.compile("i\\:(\\d+)\\-(\\d+)(l?)");
    private static final Pattern M_PATTERN = Pattern.compile("m\\:(\\d+)-(\\d+)\\=([0-9A-F-a-f]+)");
    private static final Pattern P_PATTERN = Pattern.compile("p\\:(\\d+)\\-(\\d+)");
    private static final String TAG = "BeaconParser";
    protected List<Integer> mDataEndOffsets = new ArrayList();
    protected List<Boolean> mDataLittleEndianFlags = new ArrayList();
    protected List<Integer> mDataStartOffsets = new ArrayList();
    protected List<Integer> mIdentifierEndOffsets = new ArrayList();
    protected List<Boolean> mIdentifierLittleEndianFlags = new ArrayList();
    protected List<Integer> mIdentifierStartOffsets = new ArrayList();
    private Long mMatchingBeaconTypeCode;
    protected Integer mMatchingBeaconTypeCodeEndOffset;
    protected Integer mMatchingBeaconTypeCodeStartOffset;
    protected Integer mPowerEndOffset;
    protected Integer mPowerStartOffset;

    public static class BeaconLayoutException extends RuntimeException {
        public BeaconLayoutException(String str) {
        }
    }

    public BeaconParser setBeaconLayout(String str) {
        StringBuilder stringBuilder;
        for (CharSequence charSequence : str.split(",")) {
            int parseInt;
            int parseInt2;
            Matcher matcher = I_PATTERN.matcher(charSequence);
            Object obj = null;
            while (matcher.find()) {
                try {
                    parseInt = Integer.parseInt(matcher.group(1));
                    parseInt2 = Integer.parseInt(matcher.group(2));
                    this.mIdentifierLittleEndianFlags.add(Boolean.valueOf(matcher.group(3).equals("l")));
                    this.mIdentifierStartOffsets.add(Integer.valueOf(parseInt));
                    this.mIdentifierEndOffsets.add(Integer.valueOf(parseInt2));
                    obj = 1;
                } catch (NumberFormatException unused) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot parse integer byte offset in term: ");
                    stringBuilder.append(charSequence);
                    throw new BeaconLayoutException(stringBuilder.toString());
                }
            }
            matcher = D_PATTERN.matcher(charSequence);
            while (matcher.find()) {
                try {
                    parseInt = Integer.parseInt(matcher.group(1));
                    parseInt2 = Integer.parseInt(matcher.group(2));
                    this.mDataLittleEndianFlags.add(Boolean.valueOf(matcher.group(3).equals("l")));
                    this.mDataStartOffsets.add(Integer.valueOf(parseInt));
                    this.mDataEndOffsets.add(Integer.valueOf(parseInt2));
                    obj = 1;
                } catch (NumberFormatException unused2) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot parse integer byte offset in term: ");
                    stringBuilder.append(charSequence);
                    throw new BeaconLayoutException(stringBuilder.toString());
                }
            }
            matcher = P_PATTERN.matcher(charSequence);
            while (matcher.find()) {
                try {
                    parseInt = Integer.parseInt(matcher.group(1));
                    parseInt2 = Integer.parseInt(matcher.group(2));
                    this.mPowerStartOffset = Integer.valueOf(parseInt);
                    this.mPowerEndOffset = Integer.valueOf(parseInt2);
                    obj = 1;
                } catch (NumberFormatException unused3) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot parse integer power byte offset in term: ");
                    stringBuilder.append(charSequence);
                    throw new BeaconLayoutException(stringBuilder.toString());
                }
            }
            matcher = M_PATTERN.matcher(charSequence);
            while (matcher.find()) {
                try {
                    parseInt = Integer.parseInt(matcher.group(1));
                    parseInt2 = Integer.parseInt(matcher.group(2));
                    this.mMatchingBeaconTypeCodeStartOffset = Integer.valueOf(parseInt);
                    this.mMatchingBeaconTypeCodeEndOffset = Integer.valueOf(parseInt2);
                    String group = matcher.group(3);
                    try {
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("0x");
                        stringBuilder2.append(group);
                        this.mMatchingBeaconTypeCode = Long.decode(stringBuilder2.toString());
                        obj = 1;
                    } catch (NumberFormatException unused4) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Cannot parse beacon type code: ");
                        stringBuilder.append(group);
                        stringBuilder.append(" in term: ");
                        stringBuilder.append(charSequence);
                        throw new BeaconLayoutException(stringBuilder.toString());
                    }
                } catch (NumberFormatException unused5) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot parse integer byte offset in term: ");
                    stringBuilder.append(charSequence);
                    throw new BeaconLayoutException(stringBuilder.toString());
                }
            }
            if (obj == null) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("cannot parse term ");
                stringBuilder.append(charSequence);
                BeaconManager.logDebug(str, stringBuilder.toString());
                stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot parse beacon layout term: ");
                stringBuilder.append(charSequence);
                throw new BeaconLayoutException(stringBuilder.toString());
            }
        }
        if (this.mPowerStartOffset == null || this.mPowerEndOffset == null) {
            throw new BeaconLayoutException("You must supply a power byte offset with a prefix of 'p'");
        } else if (this.mMatchingBeaconTypeCodeStartOffset == null || this.mMatchingBeaconTypeCodeEndOffset == null) {
            throw new BeaconLayoutException("You must supply a matching beacon type expression with a prefix of 'm'");
        } else if (this.mIdentifierStartOffsets.size() != 0 && this.mIdentifierEndOffsets.size() != 0) {
            return this;
        } else {
            throw new BeaconLayoutException("You must supply at least one identifier offset withh a prefix of 'i'");
        }
    }

    public Long getMatchingBeaconTypeCode() {
        return this.mMatchingBeaconTypeCode;
    }

    @TargetApi(5)
    public Beacon fromScanData(byte[] bArr, int i, BluetoothDevice bluetoothDevice) {
        return fromScanData(bArr, i, bluetoothDevice, new Beacon());
    }

    /* Access modifiers changed, original: protected */
    @TargetApi(5)
    public Beacon fromScanData(byte[] bArr, int i, BluetoothDevice bluetoothDevice, Beacon beacon) {
        Object obj;
        byte[] longToByteArray = longToByteArray(getMatchingBeaconTypeCode().longValue(), (this.mMatchingBeaconTypeCodeEndOffset.intValue() - this.mMatchingBeaconTypeCodeStartOffset.intValue()) + 1);
        int i2 = 2;
        while (i2 <= 5) {
            if (byteArraysMatch(bArr, this.mMatchingBeaconTypeCodeStartOffset.intValue() + i2, longToByteArray, 0)) {
                obj = 1;
                break;
            }
            i2++;
        }
        obj = null;
        String str = null;
        if (obj == null) {
            String str2 = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("This is not a matching Beacon advertisement.  (Was expecting ");
            stringBuilder.append(byteArrayToString(longToByteArray));
            stringBuilder.append(".  The bytes I see are: ");
            stringBuilder.append(bytesToHex(bArr));
            BeaconManager.logDebug(str2, stringBuilder.toString());
            return null;
        }
        int i3;
        String name;
        String str3 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("This is a recognized beacon advertisement -- ");
        stringBuilder2.append(String.format("%04x", new Object[]{getMatchingBeaconTypeCode()}));
        stringBuilder2.append(" seen");
        BeaconManager.logDebug(str3, stringBuilder2.toString());
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < this.mIdentifierEndOffsets.size(); i4++) {
            arrayList.add(Identifier.parse(byteArrayToFormattedString(bArr, ((Integer) this.mIdentifierStartOffsets.get(i4)).intValue() + i2, ((Integer) this.mIdentifierEndOffsets.get(i4)).intValue() + i2, (Boolean) this.mIdentifierLittleEndianFlags.get(i4))));
        }
        ArrayList arrayList2 = new ArrayList();
        for (i3 = 0; i3 < this.mDataEndOffsets.size(); i3++) {
            arrayList2.add(Long.valueOf(Long.parseLong(byteArrayToFormattedString(bArr, ((Integer) this.mDataStartOffsets.get(i3)).intValue() + i2, ((Integer) this.mDataEndOffsets.get(i3)).intValue() + i2, (Boolean) this.mDataLittleEndianFlags.get(i3)))));
            String str4 = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("parsing found data field ");
            stringBuilder3.append(i3);
            BeaconManager.logDebug(str4, stringBuilder3.toString());
        }
        i3 = Integer.parseInt(byteArrayToFormattedString(bArr, this.mPowerStartOffset.intValue() + i2, this.mPowerEndOffset.intValue() + i2, Boolean.valueOf(false)));
        if (i3 > TransportMediator.KEYCODE_MEDIA_PAUSE) {
            i3 += InputDeviceCompat.SOURCE_ANY;
        }
        int parseInt = Integer.parseInt(byteArrayToFormattedString(bArr, this.mMatchingBeaconTypeCodeStartOffset.intValue() + i2, this.mMatchingBeaconTypeCodeEndOffset.intValue() + i2, Boolean.valueOf(false)));
        int parseInt2 = Integer.parseInt(byteArrayToFormattedString(bArr, i2, i2 + 1, Boolean.valueOf(true)));
        if (bluetoothDevice != null) {
            str = bluetoothDevice.getAddress();
            name = bluetoothDevice.getName();
        } else {
            name = null;
        }
        beacon.mIdentifiers = arrayList;
        beacon.mDataFields = arrayList2;
        beacon.mTxPower = i3;
        beacon.mRssi = i;
        beacon.mBeaconTypeCode = parseInt;
        beacon.mBluetoothAddress = str;
        beacon.mBluetoothName = name;
        beacon.mManufacturer = parseInt2;
        return beacon;
    }

    public byte[] getBeaconAdvertisementData(Beacon beacon) {
        int intValue;
        byte[] bArr = new byte[26];
        getMatchingBeaconTypeCode().longValue();
        int i = 0;
        bArr[0] = (byte) (beacon.getManufacturer() & 255);
        bArr[1] = (byte) ((beacon.getManufacturer() >> 8) & 255);
        for (intValue = this.mMatchingBeaconTypeCodeStartOffset.intValue(); intValue <= this.mMatchingBeaconTypeCodeEndOffset.intValue(); intValue++) {
            bArr[intValue] = (byte) ((int) ((getMatchingBeaconTypeCode().longValue() >> ((this.mMatchingBeaconTypeCodeEndOffset.intValue() - intValue) * 8)) & 255));
        }
        for (intValue = 0; intValue < this.mIdentifierStartOffsets.size(); intValue++) {
            byte[] toByteArrayOfSpecifiedEndianness = beacon.getIdentifier(intValue).toByteArrayOfSpecifiedEndianness(((Boolean) this.mIdentifierLittleEndianFlags.get(intValue)).booleanValue());
            for (int intValue2 = ((Integer) this.mIdentifierStartOffsets.get(intValue)).intValue(); intValue2 <= ((Integer) this.mIdentifierEndOffsets.get(intValue)).intValue(); intValue2++) {
                bArr[intValue2] = toByteArrayOfSpecifiedEndianness[((Integer) this.mIdentifierEndOffsets.get(intValue)).intValue() - intValue2];
            }
        }
        for (intValue = this.mPowerStartOffset.intValue(); intValue <= this.mPowerEndOffset.intValue(); intValue++) {
            bArr[intValue] = (byte) ((beacon.getTxPower() >> ((intValue - this.mPowerStartOffset.intValue()) * 8)) & 255);
        }
        while (i < this.mDataStartOffsets.size()) {
            long longValue = ((Long) beacon.getDataFields().get(i)).longValue();
            intValue = ((Integer) this.mDataStartOffsets.get(i)).intValue();
            while (intValue <= ((Integer) this.mDataEndOffsets.get(i)).intValue()) {
                bArr[((Boolean) this.mDataLittleEndianFlags.get(i)).booleanValue() ? ((Integer) this.mDataEndOffsets.get(i)).intValue() - intValue : intValue] = (byte) ((int) ((longValue >> ((intValue - ((Integer) this.mDataStartOffsets.get(i)).intValue()) * 8)) & 255));
                intValue++;
            }
            i++;
        }
        return bArr;
    }

    public BeaconParser setMatchingBeaconTypeCode(Long l) {
        this.mMatchingBeaconTypeCode = l;
        return this;
    }

    protected static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = HEX_ARRAY[i2 >>> 4];
            cArr[i3 + 1] = HEX_ARRAY[i2 & 15];
        }
        return new String(cArr);
    }

    /* Access modifiers changed, original: protected */
    public byte[] longToByteArray(long j, int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = ((i - i2) - 1) * 8;
            bArr[i2] = (byte) ((int) ((j & (255 << i3)) >> ((int) ((long) i3))));
        }
        return bArr;
    }

    private boolean byteArraysMatch(byte[] bArr, int i, byte[] bArr2, int i2) {
        int length = bArr.length > bArr2.length ? bArr2.length : bArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (bArr[i3 + i] != bArr2[i3 + i2]) {
                return false;
            }
        }
        return true;
    }

    private String byteArrayToString(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            stringBuilder.append(String.format("%02x", new Object[]{Byte.valueOf(bArr[i])}));
            stringBuilder.append(" ");
        }
        return stringBuilder.toString().trim();
    }

    private String byteArrayToFormattedString(byte[] bArr, int i, int i2, Boolean bool) {
        i2 -= i;
        int i3 = i2 + 1;
        byte[] bArr2 = new byte[i3];
        int i4 = 0;
        int i5;
        if (bool.booleanValue()) {
            for (i5 = 0; i5 <= i2; i5++) {
                bArr2[i5] = bArr[((bArr2.length + i) - 1) - i5];
            }
        } else {
            for (i5 = 0; i5 <= i2; i5++) {
                bArr2[i5] = bArr[i + i5];
            }
        }
        if (i3 < 5) {
            Long valueOf = Long.valueOf(0);
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Byte array is size ");
            stringBuilder.append(bArr2.length);
            BeaconManager.logDebug(str, stringBuilder.toString());
            while (i4 < bArr2.length) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("index is ");
                stringBuilder.append(i4);
                BeaconManager.logDebug(str, stringBuilder.toString());
                long j = (long) (bArr2[(bArr2.length - i4) - 1] & 255);
                long pow = (long) Math.pow(256.0d, ((double) i4) * 1.0d);
                long j2 = j * pow;
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("calculatedValue for position ");
                stringBuilder2.append(i4);
                stringBuilder2.append(" with positionValue ");
                stringBuilder2.append(pow);
                stringBuilder2.append(" and byteValue ");
                stringBuilder2.append(j);
                stringBuilder2.append(" is ");
                stringBuilder2.append(j2);
                BeaconManager.logDebug(str2, stringBuilder2.toString());
                valueOf = Long.valueOf(valueOf.longValue() + j2);
                i4++;
            }
            return valueOf.toString();
        }
        String bytesToHex = bytesToHex(bArr2);
        StringBuilder stringBuilder3;
        if (bArr2.length == 16) {
            stringBuilder3 = new StringBuilder();
            stringBuilder3.append(bytesToHex.substring(0, 8));
            stringBuilder3.append("-");
            stringBuilder3.append(bytesToHex.substring(8, 12));
            stringBuilder3.append("-");
            stringBuilder3.append(bytesToHex.substring(12, 16));
            stringBuilder3.append("-");
            stringBuilder3.append(bytesToHex.substring(16, 20));
            stringBuilder3.append("-");
            stringBuilder3.append(bytesToHex.substring(20, 32));
            return stringBuilder3.toString();
        }
        stringBuilder3 = new StringBuilder();
        stringBuilder3.append("0x");
        stringBuilder3.append(bytesToHex);
        return stringBuilder3.toString();
    }
}
