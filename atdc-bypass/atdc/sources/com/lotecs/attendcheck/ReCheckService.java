package com.lotecs.attendcheck;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.v4.app.NotificationCompat.Builder;
import android.util.Log;
import com.androidnetworking.AndroidNetworking;
import com.androidnetworking.common.Priority;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.JSONObjectRequestListener;
import com.lotecs.attendcheck.common.IntroActivity;
import com.lotecs.attendcheck.domain.AttendInfo;
import com.lotecs.util.AndroidUtil;
import com.lotecs.util.DateUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kr.ac.unist.atdc.R;
import org.altbeacon.beacon.Beacon;
import org.json.JSONException;
import org.json.JSONObject;
import roboguice.service.RoboService;

public class ReCheckService extends RoboService {
    private static final String TAG = "ReCheckService";
    private int cnt = 0;
    private ArrayList<Beacon> goplusBeacons;
    boolean isWifiState = false;
    private Handler serviceHandler = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 1234) {
                ArrayList arrayList = (ArrayList) message.obj;
                if (ReCheckService.this.goplusBeacons == null || ReCheckService.this.goplusBeacons.size() <= 0) {
                    ReCheckService.this.baseAccessPointMac(arrayList);
                    return;
                }
                AttendInfo access$300 = ReCheckService.this.getBeaconAuth(arrayList);
                if (access$300 != null) {
                    ReCheckService.this.atdcCheckBack(access$300, "O");
                } else {
                    ReCheckService.this.baseAccessPointMac(arrayList);
                }
            } else if (i == 2345) {
                NotificationManager notificationManager = (NotificationManager) ReCheckService.this.getSystemService("notification");
                Builder builder = new Builder(ReCheckService.this);
                builder.setSmallIcon(R.drawable.ic_launcher).setContentTitle("전자출결 시스템").setContentText("출결이 확인 되었습니다.").setAutoCancel(true).setVibrate(new long[]{1000, 2000});
                builder.setContentIntent(PendingIntent.getActivity(ReCheckService.this.getApplicationContext(), 0, new Intent(ReCheckService.this.getApplicationContext(), IntroActivity.class), 134217728));
                notificationManager.notify(1, builder.build());
            }
        }
    };
    WifiManager wfm = null;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.goplusBeacons = new ArrayList();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d(TAG, TAG);
        if (intent != null) {
            try {
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("atte");
                this.cnt = intent.getIntExtra("cnt", 0);
                initBluetooth();
                ((GoPlusBeaconApp) getApplication()).setRangingService(this, true);
                this.serviceHandler.sendMessageAtTime(Message.obtain(this.serviceHandler, 1234, parcelableArrayListExtra), 2000);
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(TAG, e.getMessage());
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    private void initBluetooth() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter.getState() == 13 || defaultAdapter.getState() == 10) {
            defaultAdapter.enable();
        }
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public void didRangeBeaconsInRegion(Collection<Beacon> collection) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(collection.size());
        stringBuilder.append("개 didRangeBeaconsInRegion");
        Log.d(str, stringBuilder.toString());
        if (collection.size() > 0) {
            this.goplusBeacons.addAll(filterBeacons(collection));
        }
    }

    private List<Beacon> filterBeacons(Collection<Beacon> collection) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(collection.size());
        stringBuilder.append("개 filterBeacons");
        Log.d(str, stringBuilder.toString());
        ArrayList arrayList = new ArrayList(collection.size());
        for (Beacon add : collection) {
            arrayList.add(add);
        }
        Collections.sort(arrayList, new Comparator<Beacon>() {
            public int compare(Beacon beacon, Beacon beacon2) {
                return Double.compare(beacon.getDistance(), beacon2.getDistance());
            }
        });
        return arrayList;
    }

    private AttendInfo getBeaconAuth(List<AttendInfo> list) {
        Iterator it = this.goplusBeacons.iterator();
        while (it.hasNext()) {
            Beacon beacon = (Beacon) it.next();
            Log.d(TAG, beacon.toString());
            for (AttendInfo attendInfo : list) {
                if (attendInfo.getSsid().toUpperCase().equalsIgnoreCase(beacon.getId1().toString().toUpperCase())) {
                    String toUpperCase = attendInfo.getMac().toUpperCase();
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(beacon.getId3());
                    stringBuilder.append("^");
                    stringBuilder.append(beacon.getId2());
                    if (toUpperCase.equalsIgnoreCase(stringBuilder.toString())) {
                        return attendInfo;
                    }
                }
            }
        }
        return null;
    }

    private void baseAccessPointMac(ArrayList<AttendInfo> arrayList) {
        this.wfm = (WifiManager) getSystemService("wifi");
        if (!this.wfm.isWifiEnabled()) {
            this.wfm.setWifiEnabled(true);
            this.isWifiState = true;
        }
        List scanResults = this.wfm.getScanResults();
        int i = 0;
        while (scanResults.size() == 0 && i < 120) {
            scanResults = this.wfm.getScanResults();
            try {
                Thread.sleep(500);
                i++;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        AttendInfo attendInfo = null;
        for (ScanResult scanResult : scanResults) {
            Log.i("BSSID : ", scanResult.BSSID);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AttendInfo attendInfo2 = (AttendInfo) it.next();
                if (attendInfo2.getSsid().toUpperCase().equalsIgnoreCase(scanResult.SSID.toUpperCase()) && attendInfo2.getMac().toUpperCase().equalsIgnoreCase(scanResult.BSSID.toUpperCase().replace(":", ""))) {
                    attendInfo = attendInfo2;
                }
            }
        }
        if (attendInfo != null) {
            if (this.isWifiState) {
                this.wfm.setWifiEnabled(false);
            }
            atdcCheckBack(attendInfo, "O");
            return;
        }
        this.cnt--;
        if (this.cnt == 0) {
            ((GoPlusBeaconApp) getApplication()).setRangingService(null, false);
            if (!AndroidUtil.getBooleanApiValue(this, "isBeacon", false)) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter.getState() == 11 || defaultAdapter.getState() == 12) {
                    defaultAdapter.disable();
                }
            }
        }
    }

    private void atdcCheckBack(AttendInfo attendInfo, String str) {
        attendInfo.getType();
        String string = getString(R.string.atdc_chk);
        Map hashMap = new HashMap();
        hashMap.put("idno", attendInfo.getIdno());
        hashMap.put("psco", attendInfo.getPsco());
        hashMap.put("sjco", attendInfo.getSjco());
        hashMap.put("mac", attendInfo.getMac().replace(":", ""));
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        hashMap.put("uuid", AndroidUtil.device_id(this));
        hashMap.put("check", "1");
        hashMap.put("in_out", str);
        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.d(str2, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("Y")) {
                        ReCheckService.this.serviceHandler.sendEmptyMessage(2345);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String access$100 = ReCheckService.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" anError.getErrorCode() = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(access$100, stringBuilder.toString());
            }
        });
    }
}
