package roboguice.activity;

import android.app.Activity;
import android.app.Application;
import roboguice.RoboGuice;

public abstract class RoboSplashActivity extends Activity {
    private static final double DEFAULT_SPLASH_DELAY_MS = 2500.0d;
    protected int minDisplayMs = 2500;

    /* Access modifiers changed, original: protected */
    public void doStuffInBackground(Application application) {
    }

    public abstract void startNextActivity();

    /* Access modifiers changed, original: protected */
    public void onStart() {
        super.onStart();
        final long currentTimeMillis = System.currentTimeMillis();
        new Thread(new Runnable() {
            public void run() {
                Application application = RoboSplashActivity.this.getApplication();
                RoboGuice.getOrCreateBaseApplicationInjector(RoboSplashActivity.this.getApplication());
                RoboSplashActivity.this.doStuffInBackground(application);
                long currentTimeMillis = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis < ((long) RoboSplashActivity.this.minDisplayMs)) {
                    try {
                        Thread.sleep(((long) RoboSplashActivity.this.minDisplayMs) - currentTimeMillis);
                    } catch (InterruptedException unused) {
                        Thread.interrupted();
                    }
                }
                RoboSplashActivity.this.startNextActivity();
                RoboSplashActivity.this.andFinishThisOne();
            }
        }).start();
    }

    /* Access modifiers changed, original: protected */
    public void andFinishThisOne() {
        finish();
    }
}
