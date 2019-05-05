package com.lotecs.attendcheck;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.Application;
import android.content.Context;
import android.os.RemoteException;
import android.support.multidex.MultiDex;
import android.util.Log;
import com.androidnetworking.AndroidNetworking;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.lotecs.attendcheck.common.LoginActivity;
import com.lotecs.attendcheck.common.MainActivity;
import com.lotecs.attendcheck.student.AttendActivity;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.Identifier;
import org.altbeacon.beacon.RangeNotifier;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.startup.BootstrapNotifier;
import org.altbeacon.beacon.startup.RegionBootstrap;

public class GoPlusBeaconApp extends Application implements BootstrapNotifier, RangeNotifier {
    private static final String GOPLUS_BEACON_UUID = "F7A3E806-F5BB-43F8-BA87-0783669EBEB1";
    private static final String TAG = "GoPlusBeaconApp";
    private Region mAllBeaconsRegion;
    private BeaconManager mBeaconManager;
    private LoginActivity mLoginActivity;
    private MainActivity mMainActivity;
    private AttendActivity mRangingActivity;
    private ReCheckService mReCheckService;
    private RegionBootstrap mRegionBootstrap;

    public void didDetermineStateForRegion(int i, Region region) {
    }

    public void onCreate() {
        super.onCreate();
        AndroidNetworking.initialize(getApplicationContext(), getUnsafeOkHttpClient());
        this.mAllBeaconsRegion = new Region("default", Identifier.parse(GOPLUS_BEACON_UUID), null, null);
        this.mBeaconManager = BeaconManager.getInstanceForApplication(this);
        this.mRegionBootstrap = new RegionBootstrap((BootstrapNotifier) this, this.mAllBeaconsRegion);
        this.mBeaconManager.setBackgroundBetweenScanPeriod(0);
        this.mBeaconManager.setBackgroundScanPeriod(1000);
    }

    private static OkHttpClient getUnsafeOkHttpClient() {
        try {
            TrustManager[] trustManagerArr = new TrustManager[]{new X509TrustManager() {
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            SSLContext instance = SSLContext.getInstance("SSL");
            instance.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = instance.getSocketFactory();
            Builder builder = new Builder();
            builder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(new HostnameVerifier() {
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            });
            return builder.build();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    public void didEnterRegion(Region region) {
        if (isApplicationInBackground(this)) {
            this.mBeaconManager.setBackgroundBetweenScanPeriod(0);
            this.mBeaconManager.setBackgroundScanPeriod(BeaconManager.DEFAULT_FOREGROUND_SCAN_PERIOD);
        }
        try {
            Log.d(TAG, "entered region.  starting ranging");
            this.mBeaconManager.startRangingBeaconsInRegion(this.mAllBeaconsRegion);
            this.mBeaconManager.setRangeNotifier(this);
        } catch (RemoteException unused) {
            Log.e(TAG, "Cannot start ranging");
        }
    }

    public void didExitRegion(Region region) {
        if (isApplicationInBackground(this)) {
            try {
                this.mBeaconManager.stopRangingBeaconsInRegion(this.mAllBeaconsRegion);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            this.mBeaconManager.setBackgroundBetweenScanPeriod(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            this.mBeaconManager.setBackgroundScanPeriod(BeaconManager.DEFAULT_FOREGROUND_SCAN_PERIOD);
        }
    }

    public void didRangeBeaconsInRegion(Collection<Beacon> collection, Region region) {
        if (this.mRangingActivity != null) {
            this.mRangingActivity.didRangeBeaconsInRegion(collection);
        }
        if (this.mMainActivity != null) {
            this.mMainActivity.didRangeBeaconsInRegion(collection);
        }
        if (this.mReCheckService != null) {
            this.mReCheckService.didRangeBeaconsInRegion(collection);
        }
    }

    public void setLoginActivity(LoginActivity loginActivity, boolean z) {
        this.mLoginActivity = loginActivity;
        if (!z) {
            this.mRegionBootstrap.disable();
        }
    }

    public void setRangingActivity(AttendActivity attendActivity, boolean z) {
        this.mRangingActivity = attendActivity;
        if (z) {
            this.mRegionBootstrap = new RegionBootstrap((BootstrapNotifier) this, this.mAllBeaconsRegion);
        } else {
            this.mRegionBootstrap.disable();
        }
    }

    public void setRangingService(ReCheckService reCheckService, boolean z) {
        this.mReCheckService = reCheckService;
        if (z) {
            this.mRegionBootstrap = new RegionBootstrap((BootstrapNotifier) this, this.mAllBeaconsRegion);
        } else {
            this.mRegionBootstrap.disable();
        }
    }

    public void setMainActivity(MainActivity mainActivity, boolean z) {
        this.mMainActivity = mainActivity;
        if (z) {
            this.mRegionBootstrap = new RegionBootstrap((BootstrapNotifier) this, this.mAllBeaconsRegion);
        } else {
            this.mRegionBootstrap.disable();
        }
    }

    public static boolean isApplicationInBackground(Context context) {
        List runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        if (runningTasks.isEmpty() || ((RunningTaskInfo) runningTasks.get(0)).topActivity.getPackageName().equals(context.getPackageName())) {
            return false;
        }
        return true;
    }
}
