package kr.or.kisa.seed;

import java.util.ArrayList;
import java.util.regex.Pattern;

public class ProcData {
    private static final char ETX = '\u0003';
    private static final char STX = '\u0002';
    private static final char US = ',';
    private static final byte[] pbUserKey = new byte[]{(byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) 2, (byte) 1, (byte) 3, (byte) 2, (byte) 2, (byte) 3, (byte) 1, (byte) 2, (byte) 3, (byte) -1, (byte) -1, (byte) 1};
    private static int[] pdwRoundKey = new int[32];
    private static final byte[] spUserKey = new byte[]{(byte) 1, (byte) -1, (byte) 1, (byte) 3, (byte) 2, (byte) 1, (byte) 1, (byte) 3, (byte) 2, (byte) 1, (byte) 1, (byte) 2, (byte) 3, (byte) -1, (byte) -1, (byte) 1};

    public static String encodeProc(String str, String str2, String str3, String str4, String str5) {
        ProcData procData = new ProcData();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(STX);
        stringBuilder.append(str);
        stringBuilder.append(US);
        stringBuilder.append(str2);
        stringBuilder.append(US);
        stringBuilder.append(str3);
        stringBuilder.append(US);
        stringBuilder.append(str4);
        stringBuilder.append(US);
        stringBuilder.append(str5);
        stringBuilder.append(ETX);
        byte[] convertStringToByteArray = procData.convertStringToByteArray(stringBuilder.toString());
        double ceil = Math.ceil(((double) convertStringToByteArray.length) / 16.0d);
        byte[] bArr = new byte[((int) (16.0d * ceil))];
        System.arraycopy(convertStringToByteArray, 0, bArr, 0, convertStringToByteArray.length);
        byte[] bArr2 = new byte[16];
        Seedx.SeedRoundKey(pdwRoundKey, pbUserKey);
        for (int i = 0; ((double) i) < ceil; i++) {
            int i2 = i * 16;
            Seedx.SeedXoringData(bArr, i2, bArr2);
            Seedx.SeedEncrypt(bArr, i2, pdwRoundKey, i2);
            System.arraycopy(bArr, i2, bArr2, 0, 16);
        }
        StringBuilder stringBuilder2 = new StringBuilder();
        for (int i3 = 0; i3 < bArr.length; i3++) {
            stringBuilder2.append(String.format("%02X", new Object[]{Byte.valueOf(bArr[i3]), Character.valueOf((char) bArr[i3])}));
        }
        return stringBuilder2.toString();
    }

    public static String simpleEncode(String str) {
        ProcData procData = new ProcData();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(STX);
        stringBuilder.append(str);
        stringBuilder.append(ETX);
        byte[] convertStringToByteArray = procData.convertStringToByteArray(stringBuilder.toString());
        double ceil = Math.ceil(((double) convertStringToByteArray.length) / 16.0d);
        byte[] bArr = new byte[((int) (16.0d * ceil))];
        System.arraycopy(convertStringToByteArray, 0, bArr, 0, convertStringToByteArray.length);
        byte[] bArr2 = new byte[16];
        Seedx.SeedRoundKey(pdwRoundKey, spUserKey);
        for (int i = 0; ((double) i) < ceil; i++) {
            int i2 = i * 16;
            Seedx.SeedXoringData(bArr, i2, bArr2);
            Seedx.SeedEncrypt(bArr, i2, pdwRoundKey, i2);
            System.arraycopy(bArr, i2, bArr2, 0, 16);
        }
        StringBuilder stringBuilder2 = new StringBuilder();
        for (int i3 = 0; i3 < bArr.length; i3++) {
            stringBuilder2.append(String.format("%02X", new Object[]{Byte.valueOf(bArr[i3]), Character.valueOf((char) bArr[i3])}));
        }
        return stringBuilder2.toString();
    }

    public static ArrayList<String> decodeProc(String str) {
        ArrayList<String> arrayList;
        Exception e;
        try {
            byte[] hexToByteArray = hexToByteArray(Pattern.compile("[^A-Z0-9]").matcher(str).replaceAll(""));
            int length = hexToByteArray.length / 16;
            byte[] bArr = new byte[hexToByteArray.length];
            Seedx.SeedRoundKey(pdwRoundKey, pbUserKey);
            byte[] bArr2 = new byte[16];
            int i = 0;
            System.arraycopy(hexToByteArray, 0, bArr, 0, hexToByteArray.length);
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 16;
                Seedx.SeedDecrypt(hexToByteArray, i3, pdwRoundKey, bArr, i3);
                Seedx.SeedXoringData(bArr, i3, bArr2);
                System.arraycopy(hexToByteArray, i3, bArr2, 0, 16);
            }
            Object obj = "";
            arrayList = new ArrayList();
            try {
                int length2 = bArr.length;
                while (i < length2) {
                    if (bArr[i] == (byte) 2) {
                        System.out.print("START");
                    } else if (bArr[i] == (byte) 3) {
                        System.out.print("END");
                        arrayList.add(obj);
                    } else if (bArr[i] == (byte) 44) {
                        arrayList.add(obj);
                        obj = "";
                    } else {
                        StringBuilder stringBuilder = new StringBuilder(String.valueOf(obj));
                        stringBuilder.append(new String(bArr, i, 1));
                        obj = stringBuilder.toString();
                    }
                    i++;
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return arrayList;
            }
        } catch (Exception e3) {
            e = e3;
            arrayList = null;
            e.printStackTrace();
            return arrayList;
        }
        return arrayList;
    }

    public static String simpleDecode(String str) {
        String str2 = "";
        try {
            byte[] hexToByteArray = hexToByteArray(Pattern.compile("[^A-Z0-9]").matcher(str).replaceAll(""));
            int length = hexToByteArray.length / 16;
            byte[] bArr = new byte[hexToByteArray.length];
            Seedx.SeedRoundKey(pdwRoundKey, spUserKey);
            byte[] bArr2 = new byte[16];
            int i = 0;
            System.arraycopy(hexToByteArray, 0, bArr, 0, hexToByteArray.length);
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 16;
                Seedx.SeedDecrypt(hexToByteArray, i3, pdwRoundKey, bArr, i3);
                Seedx.SeedXoringData(bArr, i3, bArr2);
                System.arraycopy(hexToByteArray, i3, bArr2, 0, 16);
            }
            int length2 = bArr.length;
            while (i < length2) {
                if (bArr[i] == (byte) 2) {
                    System.out.print("START");
                } else if (bArr[i] == (byte) 3) {
                    System.out.print("END");
                } else {
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(str2));
                    stringBuilder.append(new String(bArr, i, 1));
                    str2 = stringBuilder.toString();
                }
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    private String convertByteArrayToString(byte[] bArr) {
        return new String(bArr);
    }

    private byte[] convertStringToByteArray(String str) {
        return str.getBytes();
    }

    private static byte[] hexToByteArray(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    private String stringToHex(String str) {
        Object obj = "";
        for (int i = 0; i < str.length(); i++) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(obj));
            stringBuilder.append(String.format("%02X", new Object[]{Integer.valueOf(str.charAt(i))}));
            obj = stringBuilder.toString();
        }
        return obj;
    }

    private String stringToHex0x(String str) {
        Object obj = "";
        for (int i = 0; i < str.length(); i++) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(obj));
            stringBuilder.append(String.format("0x%02X ", new Object[]{Integer.valueOf(str.charAt(i))}));
            obj = stringBuilder.toString();
        }
        return obj;
    }
}
