package com.gun0912.tedpermission;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.annotation.StringRes;
import com.google.android.gms.drive.DriveFile;
import com.gun0912.tedpermission.util.ObjectUtils;

public abstract class PermissionBuilder<T extends PermissionBuilder> {
    private static final String PREFS_IS_FIRST_REQUEST = "PREFS_IS_FIRST_REQUEST";
    private static final String PREFS_NAME_PERMISSION = "PREFS_NAME_PERMISSION";
    private Context context;
    private CharSequence deniedCloseButtonText;
    private CharSequence denyMessage;
    private CharSequence denyTitle;
    private boolean hasSettingBtn = true;
    private PermissionListener listener;
    private String[] permissions;
    private CharSequence rationaleConfirmText;
    private CharSequence rationaleMessage;
    private CharSequence rationaleTitle;
    private CharSequence settingButtonText;

    public PermissionBuilder(Context context) {
        this.context = context;
        this.deniedCloseButtonText = context.getString(R.string.tedpermission_close);
        this.rationaleConfirmText = context.getString(R.string.tedpermission_confirm);
    }

    /* Access modifiers changed, original: protected */
    public void checkPermissions() {
        if (this.listener == null) {
            throw new IllegalArgumentException("You must setPermissionListener() on TedPermission");
        } else if (ObjectUtils.isEmpty(this.permissions)) {
            throw new IllegalArgumentException("You must setPermissions() on TedPermission");
        } else if (VERSION.SDK_INT < 23) {
            this.listener.onPermissionGranted();
        } else {
            Intent intent = new Intent(this.context, TedPermissionActivity.class);
            intent.putExtra(TedPermissionActivity.EXTRA_PERMISSIONS, this.permissions);
            intent.putExtra(TedPermissionActivity.EXTRA_RATIONALE_TITLE, this.rationaleTitle);
            intent.putExtra(TedPermissionActivity.EXTRA_RATIONALE_MESSAGE, this.rationaleMessage);
            intent.putExtra(TedPermissionActivity.EXTRA_DENY_TITLE, this.denyTitle);
            intent.putExtra(TedPermissionActivity.EXTRA_DENY_MESSAGE, this.denyMessage);
            intent.putExtra(TedPermissionActivity.EXTRA_PACKAGE_NAME, this.context.getPackageName());
            intent.putExtra(TedPermissionActivity.EXTRA_SETTING_BUTTON, this.hasSettingBtn);
            intent.putExtra(TedPermissionActivity.EXTRA_DENIED_DIALOG_CLOSE_TEXT, this.deniedCloseButtonText);
            intent.putExtra(TedPermissionActivity.EXTRA_RATIONALE_CONFIRM_TEXT, this.rationaleConfirmText);
            intent.putExtra(TedPermissionActivity.EXTRA_SETTING_BUTTON_TEXT, this.settingButtonText);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            intent.addFlags(262144);
            TedPermissionActivity.startActivity(this.context, intent, this.listener);
            TedPermissionBase.setFirstRequest(this.context, this.permissions);
        }
    }

    public T setPermissionListener(PermissionListener permissionListener) {
        this.listener = permissionListener;
        return this;
    }

    public T setPermissions(String... strArr) {
        this.permissions = strArr;
        return this;
    }

    public T setRationaleMessage(@StringRes int i) {
        return setRationaleMessage(getText(i));
    }

    private CharSequence getText(@StringRes int i) {
        if (i > 0) {
            return this.context.getText(i);
        }
        throw new IllegalArgumentException("Invalid String resource id");
    }

    public T setRationaleMessage(CharSequence charSequence) {
        this.rationaleMessage = charSequence;
        return this;
    }

    public T setRationaleTitle(@StringRes int i) {
        return setRationaleTitle(getText(i));
    }

    public T setRationaleTitle(CharSequence charSequence) {
        this.rationaleTitle = charSequence;
        return this;
    }

    public T setDeniedMessage(@StringRes int i) {
        return setDeniedMessage(getText(i));
    }

    public T setDeniedMessage(CharSequence charSequence) {
        this.denyMessage = charSequence;
        return this;
    }

    public T setDeniedTitle(@StringRes int i) {
        return setDeniedTitle(getText(i));
    }

    public T setDeniedTitle(CharSequence charSequence) {
        this.denyTitle = charSequence;
        return this;
    }

    public T setGotoSettingButton(boolean z) {
        this.hasSettingBtn = z;
        return this;
    }

    public T setGotoSettingButtonText(@StringRes int i) {
        return setGotoSettingButtonText(getText(i));
    }

    public T setGotoSettingButtonText(CharSequence charSequence) {
        this.settingButtonText = charSequence;
        return this;
    }

    public T setRationaleConfirmText(@StringRes int i) {
        return setRationaleConfirmText(getText(i));
    }

    public T setRationaleConfirmText(CharSequence charSequence) {
        this.rationaleConfirmText = charSequence;
        return this;
    }

    public T setDeniedCloseButtonText(CharSequence charSequence) {
        this.deniedCloseButtonText = charSequence;
        return this;
    }

    public T setDeniedCloseButtonText(@StringRes int i) {
        return setDeniedCloseButtonText(getText(i));
    }
}
