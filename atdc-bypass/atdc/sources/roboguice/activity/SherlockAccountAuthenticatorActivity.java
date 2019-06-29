package roboguice.activity;

import android.accounts.AccountAuthenticatorResponse;
import android.annotation.TargetApi;
import android.os.Bundle;
import com.actionbarsherlock.app.SherlockActivity;

@TargetApi(5)
public class SherlockAccountAuthenticatorActivity extends SherlockActivity {
    private AccountAuthenticatorResponse mAccountAuthenticatorResponse = null;
    private Bundle mResultBundle = null;

    public final void setAccountAuthenticatorResult(Bundle bundle) {
        this.mResultBundle = bundle;
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAccountAuthenticatorResponse = (AccountAuthenticatorResponse) getIntent().getParcelableExtra("accountAuthenticatorResponse");
        if (this.mAccountAuthenticatorResponse != null) {
            this.mAccountAuthenticatorResponse.onRequestContinued();
        }
    }

    public void finish() {
        if (this.mAccountAuthenticatorResponse != null) {
            if (this.mResultBundle != null) {
                this.mAccountAuthenticatorResponse.onResult(this.mResultBundle);
            } else {
                this.mAccountAuthenticatorResponse.onError(4, "canceled");
            }
            this.mAccountAuthenticatorResponse = null;
        }
        super.finish();
    }
}
