package com.lotecs.attendcheck.student;

import android.app.ActionBar;
import android.app.AlarmManager;
import android.app.AlertDialog.Builder;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.NotificationCompat;
import android.support.v4.internal.view.SupportMenu;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.androidnetworking.AndroidNetworking;
import com.androidnetworking.common.Priority;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.JSONObjectRequestListener;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.gms.drive.DriveFile;
import com.lotecs.attendcheck.BaseActivity;
import com.lotecs.attendcheck.GoPlusBeaconApp;
import com.lotecs.attendcheck.ReCheckRestartReceiver;
import com.lotecs.attendcheck.domain.AttendInfo;
import com.lotecs.util.AndroidUtil;
import com.lotecs.util.DateUtil;
import com.lotecs.util.StringUtil;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import kr.ac.unist.atdc.R;
import kr.or.kisa.seed.ProcData;
import org.altbeacon.beacon.Beacon;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import roboguice.inject.InjectView;
import roboguice.util.RoboAsyncTask;

public class AttendActivity extends BaseActivity implements OnClickListener {
    protected static final int ATDC_CHECK_FAIL = 123141419;
    protected static final int ATDC_CHECK_PROGRESS = 123141417;
    protected static final int ATDC_CHECK_SUCCESS = 123141418;
    protected static final int INFO_BE_SUCCESS = 123141422;
    protected static final int INFO_FAIL = 123141413;
    protected static final int INFO_PROGRESS = 123141411;
    protected static final int INFO_SUCCESS = 123141412;
    protected static final int INITIAL_INFO = 123141410;
    protected static final int MAC_CHECK_FAIL = 123141416;
    protected static final int MAC_CHECK_PROGRESS = 123141414;
    protected static final int MAC_CHECK_RUN = 123141454;
    protected static final int MAC_CHECK_SUCCESS = 123141415;
    protected static final String TAG = "AttendActivity";
    protected static final int TIME_TEXT_ANIMATION = 1231414168;
    private Intent alarmIntent;
    private AttendInfo atte_;
    @InjectView(2131230764)
    private TextView attend_ok_text_;
    @InjectView(2131230802)
    private ImageView change_iamge_;
    private int checkBeaconCount = 0;
    private String checkType;
    private int cnt = 0;
    @InjectView(2131230817)
    private TextView content_time_;
    private ArrayList<Beacon> goplusBeacons;
    @InjectView(2131230869)
    LinearLayout infomation_group_;
    private ArrayList<AttendInfo> infos = null;
    private boolean isGetSSID = false;
    private int isNetStatCnt = 0;
    private boolean isWifiState = false;
    private String key;
    @InjectView(2131231005)
    private TextView lecture_name_;
    @InjectView(2131231006)
    private TextView lecture_pro_;
    @InjectView(2131231007)
    private TextView lecture_room_;
    @InjectView(2131231008)
    private TextView lecture_time_;
    private Handler mHandler = new Handler();
    private Runnable mRunnable = new Runnable() {
        public void run() {
            AttendActivity.this.content_time_.setText(DateUtil.getDate("HH:mm:ss"));
        }
    };
    private Timer mTimer;
    private Handler mUIHandler = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            int i2 = 0;
            if (i == AttendActivity.INFO_BE_SUCCESS) {
                AttendActivity.this.prog_.setVisibility(8);
                AttendActivity.this.change_iamge_.setVisibility(0);
                AttendActivity.this.state_check_.setText(R.string.content_be);
            } else if (i == AttendActivity.MAC_CHECK_RUN) {
                String str = AttendActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("MAC_CHECK_RUN = ");
                stringBuilder.append(AttendActivity.this.checkBeaconCount);
                Log.d(str, stringBuilder.toString());
                str = AttendActivity.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("goplusBeacons = ");
                if (AttendActivity.this.goplusBeacons != null) {
                    i2 = AttendActivity.this.goplusBeacons.size();
                }
                stringBuilder.append(i2);
                Log.d(str, stringBuilder.toString());
                if (AttendActivity.this.goplusBeacons != null && AttendActivity.this.goplusBeacons.size() > 0) {
                    AttendInfo call;
                    Log.d(AttendActivity.TAG, "if (goplusBeacons != null && goplusBeacons.size() > 0)");
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_SUCCESS));
                    AttendInfo access$3000 = AttendActivity.this.getBeaconAuth(AttendActivity.this.infos);
                    try {
                        call = new BaseAccessPointMac(AttendActivity.this, AttendActivity.this.infos).call();
                    } catch (Exception e) {
                        e.printStackTrace();
                        call = null;
                    }
                    if (access$3000 == null && call == null) {
                        new BaseAccessPointMac(AttendActivity.this, AttendActivity.this.infos).execute();
                        return;
                    }
                    Log.d(AttendActivity.TAG, "if (info != null || info2 != null)");
                    if (StringUtil.isNull(AttendActivity.this.checkType) || !AttendActivity.this.checkType.equalsIgnoreCase("infoBe")) {
                        Log.d(AttendActivity.TAG, " if (info != null) else");
                        if (call == null) {
                            AttendActivity.this.getAtdcChk(access$3000, "1");
                        } else {
                            AttendActivity.this.getAtdcChk(call, "1");
                        }
                    } else if (call == null) {
                        AttendActivity.this.getAtdcChkBe(access$3000);
                    } else {
                        AttendActivity.this.getAtdcChkBe(call);
                    }
                } else if (AttendActivity.this.checkBeaconCount > 2) {
                    new BaseAccessPointMac(AttendActivity.this, AttendActivity.this.infos).execute();
                } else {
                    AttendActivity.this.checkBeaconCount = AttendActivity.this.checkBeaconCount + 1;
                    AttendActivity.this.mUIHandler.sendEmptyMessageDelayed(AttendActivity.MAC_CHECK_RUN, 2000);
                }
            } else if (i != AttendActivity.TIME_TEXT_ANIMATION) {
                BluetoothAdapter defaultAdapter;
                switch (i) {
                    case AttendActivity.INITIAL_INFO /*123141410*/:
                        AttendActivity.this.prog_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setVisibility(8);
                        return;
                    case AttendActivity.INFO_PROGRESS /*123141411*/:
                        AttendActivity.this.prog_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setVisibility(8);
                        AttendActivity.this.state_check_.setText(R.string.attend_loading);
                        return;
                    case AttendActivity.INFO_SUCCESS /*123141412*/:
                        AttendActivity.this.prog_.setVisibility(8);
                        AttendActivity.this.change_iamge_.setVisibility(0);
                        AttendActivity.this.state_check_.setText(R.string.content_confirm);
                        return;
                    case AttendActivity.INFO_FAIL /*123141413*/:
                        AttendActivity.this.infomation_group_.setVisibility(8);
                        AttendActivity.this.prog_.setVisibility(8);
                        AttendActivity.this.change_iamge_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setImageResource(R.drawable.att_u);
                        AttendActivity.this.resizeImg();
                        AttendActivity.this.state_check_.setText((String) message.obj);
                        AttendActivity.this.attend_ok_text_.setText(AttendActivity.this.getString(R.string.ok));
                        return;
                    case AttendActivity.MAC_CHECK_PROGRESS /*123141414*/:
                        AttendActivity.this.prog_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setVisibility(8);
                        AttendActivity.this.state_check_.setText(R.string.position_checking);
                        return;
                    case AttendActivity.MAC_CHECK_SUCCESS /*123141415*/:
                        AttendActivity.this.prog_.setVisibility(8);
                        AttendActivity.this.state_check_.setText((String) message.obj);
                        return;
                    case AttendActivity.MAC_CHECK_FAIL /*123141416*/:
                        AttendActivity.this.prog_.setVisibility(8);
                        AttendActivity.this.change_iamge_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setImageResource(R.drawable.att_u);
                        AttendActivity.this.resizeImg();
                        AttendActivity.this.state_check_.setText((String) message.obj);
                        AttendActivity.this.attend_ok_text_.setText(AttendActivity.this.getString(R.string.ok));
                        return;
                    case AttendActivity.ATDC_CHECK_PROGRESS /*123141417*/:
                        AttendActivity.this.prog_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setVisibility(8);
                        AttendActivity.this.state_check_.setText(R.string.attend_checking);
                        return;
                    case AttendActivity.ATDC_CHECK_SUCCESS /*123141418*/:
                        AttendActivity.this.prog_.setVisibility(8);
                        AttendActivity.this.change_iamge_.setVisibility(0);
                        JSONObject jSONObject = (JSONObject) message.obj;
                        try {
                            AttendActivity.this.setImg(((JSONObject) jSONObject.getJSONArray("result").get(0)).getString(":B1"));
                            AttendActivity.this.state_check_.setText(jSONObject.getString("message"));
                            AttendActivity.this.attend_ok_text_.setText(jSONObject.getString("message"));
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        AttendActivity.this.mTimer.cancel();
                        AttendActivity.this.content_time_.setTextColor(SupportMenu.CATEGORY_MASK);
                        if (!AndroidUtil.getBooleanApiValue(AttendActivity.this, "isBeacon", false)) {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            if (defaultAdapter.getState() == 11 || defaultAdapter.getState() == 12) {
                                defaultAdapter.disable();
                                return;
                            }
                            return;
                        }
                        return;
                    case AttendActivity.ATDC_CHECK_FAIL /*123141419*/:
                        AttendActivity.this.prog_.setVisibility(8);
                        AttendActivity.this.change_iamge_.setVisibility(0);
                        AttendActivity.this.change_iamge_.setImageResource(R.drawable.att_u);
                        AttendActivity.this.resizeImg();
                        AttendActivity.this.state_check_.setText((String) message.obj);
                        AttendActivity.this.attend_ok_text_.setText(AttendActivity.this.getString(R.string.ok));
                        if (!AndroidUtil.getBooleanApiValue(AttendActivity.this, "isBeacon", false)) {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            if (defaultAdapter.getState() == 11 || defaultAdapter.getState() == 12) {
                                defaultAdapter.disable();
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } else {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(1000);
                alphaAnimation.setRepeatCount(2);
                AttendActivity.this.content_time_.setAnimation(alphaAnimation);
            }
        }
    };
    private Timer netStatTimer;
    private Runnable networkStatRun = new Runnable() {
        public void run() {
            String str = AttendActivity.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(AndroidUtil.is_network_setting(AttendActivity.this));
            stringBuilder.append("/");
            stringBuilder.append(AttendActivity.this.isNetStatCnt);
            Log.d(str, stringBuilder.toString());
            if (AndroidUtil.is_network_setting(AttendActivity.this)) {
                AttendActivity.this.netStatTimer.cancel();
                if (AttendActivity.this.atte_ != null) {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_SUCCESS));
                    AttendActivity.this.getAtdcChk(AttendActivity.this.atte_, "1");
                } else {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                    if (!AndroidUtil.getBooleanApiValue(AttendActivity.this, "isBeacon", false)) {
                        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                        if (defaultAdapter.getState() == 11 || defaultAdapter.getState() == 12) {
                            defaultAdapter.disable();
                        }
                    }
                }
            }
            if (AttendActivity.this.isNetStatCnt > 10) {
                AttendActivity.this.netStatTimer.cancel();
            }
            AttendActivity.this.isNetStatCnt = AttendActivity.this.isNetStatCnt + 1;
        }
    };
    @InjectView(2131230763)
    private ImageButton ok_button_;
    @InjectView(2131230953)
    private ImageView prof_photo_;
    @InjectView(2131230955)
    private ProgressBar prog_;
    private String secondEncode;
    @InjectView(2131230765)
    private TextView state_check_;
    private String time;
    private int type = 0;
    private String uid_;

    class MainTimerTask extends TimerTask {
        private int cases;

        public MainTimerTask(int i) {
            this.cases = i;
        }

        public void run() {
            int i = this.cases;
            if (i == 100) {
                AttendActivity.this.mHandler.post(AttendActivity.this.mRunnable);
            } else if (i == 200) {
                AttendActivity.this.mHandler.post(AttendActivity.this.networkStatRun);
            }
        }
    }

    private class BaseAccessPointMac extends RoboAsyncTask<AttendInfo> {
        ArrayList<AttendInfo> attend_ = null;
        WifiManager wfm = null;

        protected BaseAccessPointMac(Context context, ArrayList<AttendInfo> arrayList) {
            super(context);
            this.attend_ = arrayList;
            this.wfm = (WifiManager) AttendActivity.this.getSystemService("wifi");
        }

        /* Access modifiers changed, original: protected */
        public void onPreExecute() throws Exception {
            super.onPreExecute();
            AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_PROGRESS));
            if (!this.wfm.isWifiEnabled()) {
                this.wfm.setWifiEnabled(true);
                this.wfm.reassociate();
                AttendActivity.this.isWifiState = true;
            }
        }

        public AttendInfo call() throws Exception {
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
            for (ScanResult scanResult : scanResults) {
                Log.i("SSID : ", scanResult.SSID);
                Log.i("BSSID : ", scanResult.BSSID);
                Iterator it = this.attend_.iterator();
                while (it.hasNext()) {
                    AttendInfo attendInfo = (AttendInfo) it.next();
                    if (attendInfo.getSsid().toUpperCase().equalsIgnoreCase(scanResult.SSID.toUpperCase()) && attendInfo.getMac().toUpperCase().equalsIgnoreCase(scanResult.BSSID.toUpperCase().replace(":", ""))) {
                        return attendInfo;
                    }
                }
            }
            return null;
        }

        /* Access modifiers changed, original: protected */
        public void onSuccess(AttendInfo attendInfo) throws Exception {
            MainTimerTask mainTimerTask;
            if (attendInfo == null) {
                if (AttendActivity.this.isWifiState) {
                    this.wfm.setWifiEnabled(false);
                    mainTimerTask = new MainTimerTask(200);
                    AttendActivity.this.netStatTimer = new Timer();
                    AttendActivity.this.netStatTimer.schedule(mainTimerTask, 1000, 500);
                }
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                if (!AndroidUtil.getBooleanApiValue(AttendActivity.this, "isBeacon", false)) {
                    BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    if (defaultAdapter.getState() == 11 || defaultAdapter.getState() == 12) {
                        defaultAdapter.disable();
                    }
                }
            } else if (AttendActivity.this.isWifiState) {
                this.wfm.setWifiEnabled(false);
                mainTimerTask = new MainTimerTask(200);
                AttendActivity.this.netStatTimer = new Timer();
                AttendActivity.this.netStatTimer.schedule(mainTimerTask, 1000, 500);
                AttendActivity.this.atte_ = attendInfo;
            } else {
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_SUCCESS));
                AttendActivity.this.getAtdcChk(attendInfo, "1");
            }
            super.onSuccess(attendInfo);
        }

        /* Access modifiers changed, original: protected */
        public void onException(Exception exception) throws RuntimeException {
            if (AttendActivity.this.isWifiState) {
                this.wfm.setWifiEnabled(false);
                MainTimerTask mainTimerTask = new MainTimerTask(200);
                AttendActivity.this.netStatTimer = new Timer();
                AttendActivity.this.netStatTimer.schedule(mainTimerTask, 1000, 500);
            }
            AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.MAC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
            super.onException(exception);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_attend);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setHomeButtonEnabled(true);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowHomeEnabled(false);
        }
        this.goplusBeacons = new ArrayList();
        this.uid_ = getIntent().getStringExtra("uid");
        getAtdcInfo();
        MainTimerTask mainTimerTask = new MainTimerTask(100);
        this.mTimer = new Timer();
        this.mTimer.schedule(mainTimerTask, 0, 1000);
        this.ok_button_.setOnClickListener(this);
    }

    private void inputTextView(String str, String str2, String str3, String str4) {
        this.lecture_name_.setText(str);
        this.lecture_room_.setText(str4);
        this.lecture_time_.setText(str2);
        this.lecture_pro_.setText(str3);
    }

    public void onClick(View view) {
        if (view.getId() == R.id.attend_ok_button) {
            if (!this.attend_ok_text_.getText().toString().equals(getString(R.string.attend_title))) {
                finish();
            } else if (!this.isGetSSID) {
                AndroidUtil.showAlert(this, "알림", "The unregistered classroom.(등록되지 않은 강의실 입니다.) ");
            } else if (this.key == null || this.key.equalsIgnoreCase("0") || "null".equals(this.key)) {
                this.mUIHandler.sendMessage(Message.obtain(this.mUIHandler, MAC_CHECK_PROGRESS));
                this.mUIHandler.sendEmptyMessageDelayed(MAC_CHECK_RUN, 2000);
            } else {
                Builder builder = new Builder(this);
                builder.setTitle("전자출결시스템");
                builder.setMessage("인증키를 입력하십시오.");
                final EditText editText = new EditText(this);
                builder.setView(editText);
                builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        String obj = editText.getText().toString();
                        obj.toString();
                        AttendInfo attendInfo = (AttendInfo) AttendActivity.this.infos.get(0);
                        attendInfo.setMac(obj);
                        AttendActivity.this.getAtdcChk(attendInfo, "3");
                    }
                });
                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.show();
            }
        }
    }

    private void changeWifiState() {
        WifiManager wifiManager = (WifiManager) getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
            wifiManager.reassociate();
            this.isWifiState = true;
        }
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

    private void getAtdcInfo() {
        String string = getString(R.string.atdc_info);
        Map hashMap = new HashMap();
        hashMap.put("idno", this.uid_);
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                AttendActivity.this.checkType = "info";
                Log.d(AttendActivity.TAG, jSONObject.toString());
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("T")) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                        Log.i("11111 data  : ", jSONObject2.toString());
                        String simpleDecode = ProcData.simpleDecode(jSONObject2.getString("authKey"));
                        Log.i("22222 authkey  : ", simpleDecode);
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(simpleDecode.trim());
                        stringBuilder.append("UNIST");
                        simpleDecode = stringBuilder.toString();
                        Log.i("33333 firstEncode  : ", simpleDecode);
                        AttendActivity.this.secondEncode = ProcData.simpleEncode(simpleDecode);
                        Log.i("44444 secondEncode  : ", AttendActivity.this.secondEncode);
                        if (jSONObject2.has("cnt") && jSONObject2.has("time") && jSONObject2.has("type") && jSONObject2.has("key")) {
                            AttendActivity.this.cnt = jSONObject2.getInt("cnt");
                            AttendActivity.this.time = jSONObject2.getString("time");
                            AttendActivity.this.type = jSONObject2.getInt("type");
                            AttendActivity.this.key = jSONObject2.getString("key");
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("ssid");
                        if (jSONArray.length() > 0) {
                            AttendActivity.this.infos = new ArrayList();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                                AttendInfo attendInfo = new AttendInfo();
                                attendInfo.setIdno(AttendActivity.this.uid_);
                                attendInfo.setSsid(jSONObject3.getString("SSID"));
                                attendInfo.setMac(jSONObject3.getString("MSC"));
                                attendInfo.setPsco(jSONObject2.getString("psco"));
                                attendInfo.setSjco(jSONObject2.getString("sjco"));
                                AttendActivity.this.infos.add(attendInfo);
                            }
                            AttendActivity.this.isGetSSID = true;
                        }
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_SUCCESS));
                        byte[] decode = Base64.decode(jSONObject2.getString("path"), 0);
                        AttendActivity.this.inputTextView(jSONObject2.getString("sjnm"), jSONObject2.getString("date"), jSONObject2.getString("prnm"), jSONObject2.getString("rmnm"));
                        Glide.with(AttendActivity.this).load(decode).diskCacheStrategy(DiskCacheStrategy.ALL).placeholder((int) R.drawable.symbol_unist).centerCrop().into(AttendActivity.this.prof_photo_);
                        return;
                    }
                    AttendActivity.this.getAtdcInfoBe();
                } catch (JSONException e) {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String str = AttendActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" anError.getErrorCode() = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(str, stringBuilder.toString());
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
            }
        });
    }

    private void getAtdcInfoBe() {
        String string = getString(R.string.atdc_info_be);
        Map hashMap = new HashMap();
        hashMap.put("idno", this.uid_);
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.d(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                AttendActivity.this.checkType = "infoBe";
                Log.d(AttendActivity.TAG, jSONObject.toString());
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("T")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("result");
                        if (jSONArray.length() > 0) {
                            AttendActivity.this.infos = new ArrayList();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                AttendInfo attendInfo = new AttendInfo();
                                attendInfo.setIdno(AttendActivity.this.uid_);
                                attendInfo.setSsid(jSONObject2.getString("SSID"));
                                attendInfo.setMac(jSONObject2.getString("MSC"));
                                AttendActivity.this.infos.add(attendInfo);
                            }
                            jSONObject = jSONArray.getJSONObject(0);
                            AttendActivity.this.inputTextView(jSONObject.getString("BE_CLP_SJNM"), jSONObject.getString("BE_CLP_STTM"), jSONObject.getString("BE_CLP_PRNM"), jSONObject.getString("BE_CLP_RMNM"));
                            AttendActivity.this.isGetSSID = true;
                        }
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_BE_SUCCESS));
                        return;
                    }
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_FAIL, jSONObject.get("message")));
                } catch (JSONException e) {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String str = AttendActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" anError.getErrorCode() = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(str, stringBuilder.toString());
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.INFO_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
            }
        });
    }

    private void getAtdcChk(final AttendInfo attendInfo, String str) {
        String string = getString(R.string.atdc_chk);
        Map hashMap = new HashMap();
        hashMap.put("idno", this.uid_);
        hashMap.put("psco", attendInfo.getPsco());
        hashMap.put("sjco", attendInfo.getSjco());
        hashMap.put("mac", attendInfo.getMac().replace(":", ""));
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        hashMap.put("uuid", AndroidUtil.device_id(this));
        hashMap.put("check", str);
        hashMap.put("auth", this.secondEncode);
        str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(jSONObject);
                    stringBuilder.append("");
                    Log.e("sucdata", stringBuilder.toString());
                    if (!jSONObject.getString("state").equalsIgnoreCase("Y")) {
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, jSONObject.get("message")));
                    } else if (AttendActivity.this.type == 1) {
                        AttendActivity.this.atdcCheck2(attendInfo);
                    } else {
                        if (!(AttendActivity.this.cnt == 0 || StringUtil.isNull(AttendActivity.this.time) || AttendActivity.this.type == 1)) {
                            AttendActivity.this.registerRestartAlarm(true, AttendActivity.this.infos, AttendActivity.this.cnt, AttendActivity.this.time);
                        }
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_SUCCESS, jSONObject));
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.TIME_TEXT_ANIMATION));
                    }
                } catch (JSONException e) {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String str = AttendActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" anError.getErrorCode() = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(str, stringBuilder.toString());
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
            }
        });
    }

    private void atdcCheck2(AttendInfo attendInfo) {
        String string = getString(R.string.atdc_chk2);
        Map hashMap = new HashMap();
        hashMap.put("idno", this.uid_);
        hashMap.put("psco", attendInfo.getPsco());
        hashMap.put("sjco", attendInfo.getSjco());
        hashMap.put("mac", attendInfo.getMac().replace(":", ""));
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        hashMap.put("uuid", AndroidUtil.device_id(this));
        hashMap.put("check", "1");
        hashMap.put("count", Integer.valueOf(this.cnt));
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("Y")) {
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_SUCCESS, jSONObject));
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.TIME_TEXT_ANIMATION));
                        return;
                    }
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, jSONObject.get("message")));
                } catch (JSONException e) {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String str = AttendActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" anError.getErrorCode() = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(str, stringBuilder.toString());
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
            }
        });
    }

    private void getAtdcChkBe(AttendInfo attendInfo) {
        String string = getString(R.string.atdc_chk_be);
        Map hashMap = new HashMap();
        hashMap.put("idno", this.uid_);
        hashMap.put("mac", attendInfo.getMac().replace(":", ""));
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        hashMap.put("check", "1");
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("Y")) {
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_SUCCESS, jSONObject));
                        AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.TIME_TEXT_ANIMATION));
                        return;
                    }
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, jSONObject.get("message")));
                } catch (JSONException e) {
                    AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String str = AttendActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" anError.getErrorCode() = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(str, stringBuilder.toString());
                AttendActivity.this.mUIHandler.sendMessage(Message.obtain(AttendActivity.this.mUIHandler, AttendActivity.ATDC_CHECK_FAIL, AttendActivity.this.getString(R.string.subject_notice)));
            }
        });
    }

    public void registerRestartAlarm(boolean z, ArrayList<AttendInfo> arrayList, int i, String str) {
        this.alarmIntent = new Intent(this, ReCheckRestartReceiver.class);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("atte", arrayList);
        bundle.putInt("cnt", i);
        this.alarmIntent.putExtras(bundle);
        String[] split = str.split(",");
        int i2 = 0;
        while (i2 < i) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(DateUtil.getDate());
            stringBuilder.append(split[i2]);
            String stringBuilder2 = stringBuilder.toString();
            String str2 = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(DateUtil.getDifferenceSecond(stringBuilder2));
            stringBuilder3.append(" / ");
            stringBuilder3.append(stringBuilder2);
            Log.d(str2, stringBuilder3.toString());
            if (DateUtil.getDifferenceSecond(stringBuilder2) >= 0 && !isAlarmActivated(Integer.parseInt(split[i2]))) {
                PendingIntent broadcast = PendingIntent.getBroadcast(this, Integer.parseInt(split[i2]), this.alarmIntent, 0);
                AlarmManager alarmManager = (AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM);
                if (z) {
                    Calendar toCalendar = DateUtil.toCalendar(stringBuilder2);
                    Log.i(TAG, toCalendar.getTime().toString());
                    alarmManager.set(0, toCalendar.getTimeInMillis(), broadcast);
                } else {
                    alarmManager.cancel(broadcast);
                }
            }
            i2++;
        }
    }

    private void resizeImg() {
        this.change_iamge_.setScaleX(this.change_iamge_.getScaleX() + 1.0f);
        this.change_iamge_.setScaleY(this.change_iamge_.getScaleY() + 1.0f);
        LayoutParams layoutParams = (LayoutParams) this.change_iamge_.getLayoutParams();
        layoutParams.addRule(2, R.id.content_time);
        layoutParams.addRule(14);
        layoutParams.bottomMargin = (int) getResources().getDimension(R.dimen.change_img_bottom_margin);
        this.change_iamge_.setLayoutParams(layoutParams);
    }

    private void setImg(String str) {
        resizeImg();
        if ("O".equals(str)) {
            this.change_iamge_.setImageResource(R.drawable.att_o);
        } else if ("/".equals(str)) {
            this.change_iamge_.setImageResource(R.drawable.att_l);
        } else if ("X".equals(str)) {
            this.change_iamge_.setImageResource(R.drawable.att_x);
        } else {
            this.change_iamge_.setImageResource(R.drawable.att_u);
        }
    }

    private boolean isAlarmActivated(int i) {
        PendingIntent service = PendingIntent.getService(this, i, this.alarmIntent, DriveFile.MODE_WRITE_ONLY);
        boolean z = service != null;
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("[isAlarmActivated] ");
        stringBuilder.append(z);
        stringBuilder.append(" - ");
        stringBuilder.append(service);
        Log.d(str, stringBuilder.toString());
        return z;
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
        if (this.netStatTimer != null) {
            this.netStatTimer.cancel();
            this.netStatTimer = null;
        }
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

    /* Access modifiers changed, original: protected */
    public void onPause() {
        ((GoPlusBeaconApp) getApplication()).setRangingActivity(null, false);
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
        if (this.netStatTimer != null) {
            this.netStatTimer.cancel();
            this.netStatTimer = null;
        }
        super.onPause();
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        ((GoPlusBeaconApp) getApplication()).setRangingActivity(this, true);
        MainTimerTask mainTimerTask = new MainTimerTask(100);
        if (this.mTimer != null) {
            this.mTimer = new Timer();
            this.mTimer.schedule(mainTimerTask, 0, 1000);
        }
        super.onResume();
    }
}
