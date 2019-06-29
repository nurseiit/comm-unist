package com.gun0912.tedpermission;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.util.Log;
import com.gun0912.tedpermission.util.ObjectUtils;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;

public class TedPermissionActivity extends AppCompatActivity {
    public static final String EXTRA_DENIED_DIALOG_CLOSE_TEXT = "denied_dialog_close_text";
    public static final String EXTRA_DENY_MESSAGE = "deny_message";
    public static final String EXTRA_DENY_TITLE = "deny_title";
    public static final String EXTRA_PACKAGE_NAME = "package_name";
    public static final String EXTRA_PERMISSIONS = "permissions";
    public static final String EXTRA_RATIONALE_CONFIRM_TEXT = "rationale_confirm_text";
    public static final String EXTRA_RATIONALE_MESSAGE = "rationale_message";
    public static final String EXTRA_RATIONALE_TITLE = "rationale_title";
    public static final String EXTRA_SETTING_BUTTON = "setting_button";
    public static final String EXTRA_SETTING_BUTTON_TEXT = "setting_button_text";
    public static final int REQ_CODE_PERMISSION_REQUEST = 10;
    public static final int REQ_CODE_SYSTEM_ALERT_WINDOW_PERMISSION_REQUEST = 30;
    public static final int REQ_CODE_SYSTEM_ALERT_WINDOW_PERMISSION_REQUEST_SETTING = 31;
    private static Deque<PermissionListener> permissionListenerStack;
    String deniedCloseButtonText;
    CharSequence denyMessage;
    CharSequence denyTitle;
    boolean hasSettingButton;
    boolean isShownRationaleDialog;
    String packageName;
    String[] permissions;
    String rationaleConfirmText;
    CharSequence rationaleTitle;
    CharSequence rationale_message;
    String settingButtonText;

    public static void startActivity(Context context, Intent intent, PermissionListener permissionListener) {
        if (permissionListenerStack == null) {
            permissionListenerStack = new ArrayDeque();
        }
        permissionListenerStack.push(permissionListener);
        context.startActivity(intent);
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        getWindow().addFlags(16);
        setupFromSavedInstanceState(bundle);
        if (needWindowPermission()) {
            requestWindowPermission();
        } else {
            checkPermissions(false);
        }
    }

    private void setupFromSavedInstanceState(Bundle bundle) {
        if (bundle != null) {
            this.permissions = bundle.getStringArray(EXTRA_PERMISSIONS);
            this.rationaleTitle = bundle.getCharSequence(EXTRA_RATIONALE_TITLE);
            this.rationale_message = bundle.getCharSequence(EXTRA_RATIONALE_MESSAGE);
            this.denyTitle = bundle.getCharSequence(EXTRA_DENY_TITLE);
            this.denyMessage = bundle.getCharSequence(EXTRA_DENY_MESSAGE);
            this.packageName = bundle.getString(EXTRA_PACKAGE_NAME);
            this.hasSettingButton = bundle.getBoolean(EXTRA_SETTING_BUTTON, true);
            this.rationaleConfirmText = bundle.getString(EXTRA_RATIONALE_CONFIRM_TEXT);
            this.deniedCloseButtonText = bundle.getString(EXTRA_DENIED_DIALOG_CLOSE_TEXT);
            this.settingButtonText = bundle.getString(EXTRA_SETTING_BUTTON_TEXT);
            return;
        }
        Intent intent = getIntent();
        this.permissions = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
        this.rationaleTitle = intent.getCharSequenceExtra(EXTRA_RATIONALE_TITLE);
        this.rationale_message = intent.getCharSequenceExtra(EXTRA_RATIONALE_MESSAGE);
        this.denyTitle = intent.getCharSequenceExtra(EXTRA_DENY_TITLE);
        this.denyMessage = intent.getCharSequenceExtra(EXTRA_DENY_MESSAGE);
        this.packageName = intent.getStringExtra(EXTRA_PACKAGE_NAME);
        this.hasSettingButton = intent.getBooleanExtra(EXTRA_SETTING_BUTTON, true);
        this.rationaleConfirmText = intent.getStringExtra(EXTRA_RATIONALE_CONFIRM_TEXT);
        this.deniedCloseButtonText = intent.getStringExtra(EXTRA_DENIED_DIALOG_CLOSE_TEXT);
        this.settingButtonText = intent.getStringExtra(EXTRA_SETTING_BUTTON_TEXT);
    }

    private boolean needWindowPermission() {
        for (String equals : this.permissions) {
            if (equals.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                return hasWindowPermission() ^ 1;
            }
        }
        return false;
    }

    @TargetApi(23)
    private boolean hasWindowPermission() {
        return Settings.canDrawOverlays(getApplicationContext());
    }

    @TargetApi(23)
    private void requestWindowPermission() {
        final Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.fromParts("package", this.packageName, null));
        if (TextUtils.isEmpty(this.rationale_message)) {
            startActivityForResult(intent, 30);
            return;
        }
        new Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert).setMessage(this.rationale_message).setCancelable(false).setNegativeButton(this.rationaleConfirmText, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.startActivityForResult(intent, 30);
            }
        }).show();
        this.isShownRationaleDialog = true;
    }

    private void checkPermissions(boolean z) {
        ArrayList arrayList = new ArrayList();
        for (String str : this.permissions) {
            if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                if (!hasWindowPermission()) {
                    arrayList.add(str);
                }
            } else if (TedPermissionBase.isDenied(this, str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            permissionResult(null);
        } else if (z) {
            permissionResult(arrayList);
        } else if (arrayList.size() == 1 && arrayList.contains("android.permission.SYSTEM_ALERT_WINDOW")) {
            permissionResult(arrayList);
        } else if (this.isShownRationaleDialog || TextUtils.isEmpty(this.rationale_message)) {
            requestPermissions(arrayList);
        } else {
            showRationaleDialog(arrayList);
        }
    }

    private void permissionResult(ArrayList<String> arrayList) {
        String str = TedPermission.TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("permissionResult(): ");
        stringBuilder.append(arrayList);
        Log.v(str, stringBuilder.toString());
        if (permissionListenerStack != null) {
            PermissionListener permissionListener = (PermissionListener) permissionListenerStack.pop();
            if (ObjectUtils.isEmpty(arrayList)) {
                permissionListener.onPermissionGranted();
            } else {
                permissionListener.onPermissionDenied(arrayList);
            }
            if (permissionListenerStack.size() == 0) {
                permissionListenerStack = null;
            }
        }
        finish();
        overridePendingTransition(0, 0);
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    private void showRationaleDialog(final ArrayList<String> arrayList) {
        new Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert).setTitle(this.rationaleTitle).setMessage(this.rationale_message).setCancelable(false).setNegativeButton(this.rationaleConfirmText, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.requestPermissions(arrayList);
            }
        }).show();
        this.isShownRationaleDialog = true;
    }

    public void requestPermissions(ArrayList<String> arrayList) {
        ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 10);
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putStringArray(EXTRA_PERMISSIONS, this.permissions);
        bundle.putCharSequence(EXTRA_RATIONALE_TITLE, this.rationaleTitle);
        bundle.putCharSequence(EXTRA_RATIONALE_MESSAGE, this.rationale_message);
        bundle.putCharSequence(EXTRA_DENY_TITLE, this.denyTitle);
        bundle.putCharSequence(EXTRA_DENY_MESSAGE, this.denyMessage);
        bundle.putString(EXTRA_PACKAGE_NAME, this.packageName);
        bundle.putBoolean(EXTRA_SETTING_BUTTON, this.hasSettingButton);
        bundle.putString(EXTRA_SETTING_BUTTON, this.deniedCloseButtonText);
        bundle.putString(EXTRA_RATIONALE_CONFIRM_TEXT, this.rationaleConfirmText);
        bundle.putString(EXTRA_SETTING_BUTTON_TEXT, this.settingButtonText);
        super.onSaveInstanceState(bundle);
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        ArrayList deniedPermissions = TedPermissionBase.getDeniedPermissions(this, strArr);
        if (deniedPermissions.isEmpty()) {
            permissionResult(null);
        } else {
            showPermissionDenyDialog(deniedPermissions);
        }
    }

    public void showPermissionDenyDialog(final ArrayList<String> arrayList) {
        if (TextUtils.isEmpty(this.denyMessage)) {
            permissionResult(arrayList);
            return;
        }
        Builder builder = new Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        builder.setTitle(this.denyTitle).setMessage(this.denyMessage).setCancelable(false).setNegativeButton(this.deniedCloseButtonText, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.permissionResult(arrayList);
            }
        });
        if (this.hasSettingButton) {
            if (TextUtils.isEmpty(this.settingButtonText)) {
                this.settingButtonText = getString(R.string.tedpermission_setting);
            }
            builder.setPositiveButton(this.settingButtonText, new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    TedPermissionBase.startSettingActivityForResult(TedPermissionActivity.this);
                }
            });
        }
        builder.show();
    }

    public boolean shouldShowRequestPermissionRationale(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!ActivityCompat.shouldShowRequestPermissionRationale(this, (String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public void showWindowPermissionDenyDialog() {
        Builder builder = new Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        builder.setMessage(this.denyMessage).setCancelable(false).setNegativeButton(this.deniedCloseButtonText, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.checkPermissions(false);
            }
        });
        if (this.hasSettingButton) {
            if (TextUtils.isEmpty(this.settingButtonText)) {
                this.settingButtonText = getString(R.string.tedpermission_setting);
            }
            builder.setPositiveButton(this.settingButtonText, new OnClickListener() {
                @TargetApi(23)
                public void onClick(DialogInterface dialogInterface, int i) {
                    TedPermissionActivity.this.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.fromParts("package", TedPermissionActivity.this.packageName, null)), 31);
                }
            });
        }
        builder.show();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 2000) {
            switch (i) {
                case 30:
                    if (hasWindowPermission() || TextUtils.isEmpty(this.denyMessage)) {
                        checkPermissions(false);
                        return;
                    } else {
                        showWindowPermissionDenyDialog();
                        return;
                    }
                case 31:
                    checkPermissions(false);
                    return;
                default:
                    super.onActivityResult(i, i2, intent);
                    return;
            }
        }
        checkPermissions(true);
    }
}
