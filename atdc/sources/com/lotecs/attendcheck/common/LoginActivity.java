package com.lotecs.attendcheck.common;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.text.Html;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import com.androidnetworking.AndroidNetworking;
import com.androidnetworking.common.Priority;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.JSONObjectRequestListener;
import com.gun0912.tedpermission.PermissionListener;
import com.gun0912.tedpermission.TedPermission;
import com.lotecs.attendcheck.GoPlusBeaconApp;
import com.lotecs.attendcheck.domain.AppInfo;
import com.lotecs.util.AndroidUtil;
import com.lotecs.util.ErrorCode;
import com.lotecs.util.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kr.ac.unist.atdc.R;
import org.json.JSONException;
import org.json.JSONObject;

public class LoginActivity extends Activity {
    private static final String PACKAGE_NAME = "kr.ac.unist.atdc";
    private static final String TAG = "LoginActivity";
    CheckBox chk_login_;
    RelativeLayout container_;
    EditText edit_id_;
    EditText edit_pw_;
    private AppInfo getInfo;
    Button login_button_layout_;
    private PermissionListener permissionlistener = new PermissionListener() {
        public void onPermissionGranted() {
        }

        public void onPermissionDenied(ArrayList<String> arrayList) {
            LoginActivity.this.permissionCheck();
        }
    };
    TextView personal;
    TextView privacy;

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        this.container_ = (RelativeLayout) findViewById(R.id.container);
        this.edit_id_ = (EditText) findViewById(R.id.edit_id);
        this.edit_pw_ = (EditText) findViewById(R.id.edit_pw);
        this.login_button_layout_ = (Button) findViewById(R.id.login_button);
        this.chk_login_ = (CheckBox) findViewById(R.id.chk_login);
        this.personal = (TextView) findViewById(R.id.personal);
        this.privacy = (TextView) findViewById(R.id.privacy);
        this.personal.setText(R.string.personal_information1);
        TextView textView = this.privacy;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<u>");
        stringBuilder.append("Policy of Personal Information Treatment");
        stringBuilder.append("</u>");
        textView.setText(Html.fromHtml(stringBuilder.toString()));
        if (VERSION.SDK_INT >= 21) {
            permissionCheck();
        }
        if (AndroidUtil.is_network_setting(this)) {
            init();
        } else {
            Builder builder = new Builder(this);
            builder.setMessage(getString(R.string.network_not_connect));
            builder.setNeutralButton(R.string.ok, new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    LoginActivity.this.finish();
                }
            });
            builder.show();
        }
        this.privacy.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                LoginActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://portal.unist.ac.kr/irj/servlet/prt/portal/prtroot/kr.ac.unist.HomeContents.FooterPop?userLanguage=ko")));
            }
        });
        this.container_.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    LoginActivity.this.hideKeyboard(view);
                }
                return false;
            }
        });
    }

    private void permissionCheck() {
        ((TedPermission.Builder) ((TedPermission.Builder) ((TedPermission.Builder) TedPermission.with(this).setPermissionListener(this.permissionlistener)).setDeniedMessage((CharSequence) "권한에 대한 허가를 거부하면 전자출결 서비스를 사용할 수 없습니다.\n\n[설정]> [권한]에서 권한을 켜십시오.")).setPermissions("android.permission.READ_PHONE_STATE", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.WRITE_EXTERNAL_STORAGE")).check();
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        super.onResume();
        compareVersion();
    }

    public void init() {
        this.edit_id_.setImeOptions(5);
        this.edit_id_.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 0 && i != 6) {
                    return false;
                }
                LoginActivity.this.hideKeyboard(LoginActivity.this.edit_id_);
                return true;
            }
        });
        this.edit_id_.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    LoginActivity.this.edit_id_.setHint("");
                    ((InputMethodManager) LoginActivity.this.getSystemService("input_method")).showSoftInput(LoginActivity.this.edit_id_, 2);
                    return;
                }
                LoginActivity.this.edit_id_.setHint("ID");
                ((InputMethodManager) LoginActivity.this.getSystemService("input_method")).showSoftInput(LoginActivity.this.edit_id_, 2);
            }
        });
        this.edit_pw_.setImeOptions(6);
        this.edit_pw_.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 0 && i != 6) {
                    return false;
                }
                LoginActivity.this.hideKeyboard(LoginActivity.this.edit_pw_);
                return true;
            }
        });
        this.edit_pw_.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    LoginActivity.this.edit_pw_.setHint("");
                    ((InputMethodManager) LoginActivity.this.getSystemService("input_method")).showSoftInput(LoginActivity.this.edit_pw_, 2);
                    return;
                }
                LoginActivity.this.edit_pw_.setHint("PassWord");
                ((InputMethodManager) LoginActivity.this.getSystemService("input_method")).showSoftInput(LoginActivity.this.edit_pw_, 2);
            }
        });
        this.chk_login_.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                if (LoginActivity.this.chk_login_.isChecked()) {
                    Builder builder = new Builder(LoginActivity.this);
                    builder.setPositiveButton(LoginActivity.this.getString(R.string.ok), new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                        }
                    });
                    builder.setMessage(R.string.personal_information);
                    builder.show();
                }
            }
        });
        checkDebuggingMode();
        setSavedLoginId();
        LoginButtonClick();
    }

    private void setSavedLoginId() {
        boolean booleanApiValue = AndroidUtil.getBooleanApiValue(this, "save_check", false);
        String stringApiVaule = AndroidUtil.getStringApiVaule(this, "save_id");
        String stringApiVaule2 = AndroidUtil.getStringApiVaule(this, "save_pw");
        this.chk_login_.setChecked(booleanApiValue);
        this.edit_id_.setText(stringApiVaule);
        this.edit_pw_.setText(stringApiVaule2);
    }

    private void LoginButtonClick() {
        this.login_button_layout_.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (LoginActivity.this.edit_id_.getText().length() <= 0 || LoginActivity.this.edit_pw_.getText().length() <= 0) {
                        LoginActivity.this.login_button_layout_.setText("Login");
                        if (LoginActivity.this.edit_id_.getText().toString().equals("") || LoginActivity.this.edit_pw_.getText().toString().equals("")) {
                            Toast.makeText(LoginActivity.this, R.string.login_notice, 0).show();
                            return false;
                        }
                    }
                    String replace = LoginActivity.this.edit_id_.getText().toString().replace(" ", "");
                    if (AndroidUtil.getBooleanApiValue(LoginActivity.this.getApplicationContext(), "lossStatus", false)) {
                        AndroidUtil.showAlert(LoginActivity.this.getApplicationContext(), LoginActivity.this.getString(R.string.noti_message), LoginActivity.this.getString(R.string.loss_message));
                    } else {
                        LoginActivity.this.checkLoginInfo(replace);
                    }
                }
                return true;
            }
        });
    }

    private void checkLoginInfo(String str) {
        String string = getString(R.string.login_access);
        Map hashMap = new HashMap();
        hashMap.put("idno", str);
        hashMap.put("pass", this.edit_pw_.getText().toString());
        hashMap.put("uuid", AndroidUtil.device_id(this));
        str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.i(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                LoginActivity.this.hideKeyboard(LoginActivity.this.edit_id_);
                LoginActivity.this.hideKeyboard(LoginActivity.this.edit_pw_);
                try {
                    String string = jSONObject.getString("state");
                    if (string == null || !string.equalsIgnoreCase("T")) {
                        AndroidUtil.showAlert(LoginActivity.this, "", jSONObject.getString("message"));
                        return;
                    }
                    jSONObject = jSONObject.getJSONObject("data");
                    LoginActivity.this.getInfo = new AppInfo();
                    Log.i("&&&&&&&&&111111111  : ", jSONObject.getString("psnm"));
                    LoginActivity.this.getInfo.setIddi(jSONObject.getString("iddi"));
                    LoginActivity.this.getInfo.setIdno(jSONObject.getString("idno"));
                    LoginActivity.this.getInfo.setName(jSONObject.getString("name"));
                    LoginActivity.this.getInfo.setPsnm(jSONObject.getString("psnm"));
                    if (!LoginActivity.this.getInfo.getIddi().equalsIgnoreCase("1")) {
                        ((GoPlusBeaconApp) LoginActivity.this.getApplication()).setLoginActivity(null, false);
                    }
                    AndroidUtil.saveBooleanApiValue(LoginActivity.this, "save_check", LoginActivity.this.chk_login_.isChecked());
                    AndroidUtil.saveStringApiVaule(LoginActivity.this, "save_id1", LoginActivity.this.edit_id_.getText().toString());
                    if (LoginActivity.this.chk_login_.isChecked()) {
                        AndroidUtil.saveStringApiVaule(LoginActivity.this, "save_id", LoginActivity.this.edit_id_.getText().toString());
                        AndroidUtil.saveStringApiVaule(LoginActivity.this, "save_pw", LoginActivity.this.edit_pw_.getText().toString());
                    } else {
                        AndroidUtil.saveStringApiVaule(LoginActivity.this, "save_id", "");
                        AndroidUtil.saveStringApiVaule(LoginActivity.this, "save_pw", "");
                    }
                    string = AndroidUtil.getStringApiVaule(LoginActivity.this.getApplicationContext(), GCMManager.PROPERTY_REG_ID);
                    String obj = LoginActivity.this.edit_pw_.getText().toString();
                    if (StringUtil.isNull(string) || obj.equalsIgnoreCase("admin$#1510") || !jSONObject.has("priv")) {
                        Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                        intent.setFlags(67108864);
                        Bundle bundle = new Bundle();
                        LoginActivity.this.getInfo.setPass(LoginActivity.this.edit_pw_.getText().toString());
                        bundle.putParcelable("app", LoginActivity.this.getInfo);
                        intent.putExtras(bundle);
                        LoginActivity.this.startActivityForResult(intent, 1);
                        return;
                    }
                    LoginActivity.this.regIdno(LoginActivity.this.getInfo.getIdno(), string, jSONObject.getString("priv"));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            public void onError(ANError aNError) {
                String access$500 = LoginActivity.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(" on_error ===== statusCode = ");
                stringBuilder.append(aNError.getMessage());
                Log.i(access$500, stringBuilder.toString());
                LoginActivity.this.login_button_layout_.setText("Login");
                Builder builder = new Builder(LoginActivity.this);
                System.out.println(aNError.getMessage());
                int errorCode = aNError.getErrorCode();
                if (errorCode != ErrorCode.ERROR_CODE_INVALID) {
                    if (errorCode == ErrorCode.ERROR_CODE_TIMEOUT) {
                        builder.setMessage(LoginActivity.this.getString(R.string.socket_timeout));
                        builder.setNeutralButton(R.string.ok, new OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                dialogInterface.dismiss();
                            }
                        });
                        builder.show();
                        Toast.makeText(LoginActivity.this, LoginActivity.this.getString(R.string.socket_timeout), 0).show();
                        return;
                    } else if (errorCode != ErrorCode.ERROR_CODE_URL) {
                        builder.setMessage(LoginActivity.this.getString(R.string.login_notice));
                        builder.setNeutralButton(LoginActivity.this.getString(R.string.ok), new OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                dialogInterface.dismiss();
                            }
                        });
                        builder.show();
                        return;
                    }
                }
                builder.setMessage(LoginActivity.this.getString(R.string.ioexception));
                builder.setNeutralButton(R.string.ok, new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                });
                builder.show();
            }
        });
    }

    private void regIdno(String str, String str2, String str3) {
        str3 = getString(R.string.reg_idno);
        Map hashMap = new HashMap();
        hashMap.put("device", str2);
        hashMap.put("plat", SystemMediaRouteProvider.PACKAGE_NAME);
        hashMap.put("app", "unistAtdc");
        hashMap.put("idno", str);
        str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str3);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str, stringBuilder.toString());
        AndroidNetworking.post(str3).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                Intent intent;
                Bundle bundle;
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("T")) {
                        AndroidUtil.saveBooleanApiValue(LoginActivity.this, "regIdno", true);
                    } else {
                        AndroidUtil.saveBooleanApiValue(LoginActivity.this, "regIdno", false);
                    }
                    if (LoginActivity.this.getInfo != null) {
                        intent = new Intent(LoginActivity.this, MainActivity.class);
                        intent.setFlags(67108864);
                        bundle = new Bundle();
                        LoginActivity.this.getInfo.setPass(LoginActivity.this.edit_pw_.getText().toString());
                        bundle.putParcelable("app", LoginActivity.this.getInfo);
                        intent.putExtras(bundle);
                        LoginActivity.this.startActivityForResult(intent, 1);
                    }
                } catch (JSONException e) {
                    Log.w(LoginActivity.TAG, e.getMessage());
                    e.printStackTrace();
                    if (LoginActivity.this.getInfo != null) {
                        intent = new Intent(LoginActivity.this, MainActivity.class);
                        intent.setFlags(67108864);
                        bundle = new Bundle();
                    }
                } catch (Throwable th) {
                    if (LoginActivity.this.getInfo != null) {
                        Intent intent2 = new Intent(LoginActivity.this, MainActivity.class);
                        intent2.setFlags(67108864);
                        bundle = new Bundle();
                        LoginActivity.this.getInfo.setPass(LoginActivity.this.edit_pw_.getText().toString());
                        bundle.putParcelable("app", LoginActivity.this.getInfo);
                        intent2.putExtras(bundle);
                        LoginActivity.this.startActivityForResult(intent2, 1);
                    }
                }
            }

            public void onError(ANError aNError) {
                if (LoginActivity.this.getInfo != null) {
                    Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                    intent.setFlags(67108864);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("app", LoginActivity.this.getInfo);
                    intent.putExtras(bundle);
                    LoginActivity.this.startActivityForResult(intent, 1);
                }
            }
        });
    }

    private void compareVersion() {
        String string = getString(R.string.compare_version);
        Map hashMap = new HashMap();
        hashMap.put("name", "전자출결");
        hashMap.put("plat", "Android");
        hashMap.put("code", String.valueOf(getVersionCode()));
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onError(ANError aNError) {
            }

            public void onResponse(JSONObject jSONObject) {
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("T")) {
                        jSONObject = jSONObject.getJSONObject("data");
                        Builder builder = new Builder(LoginActivity.this);
                        builder.setTitle("Attendance System").setMessage(jSONObject.getString(NotificationCompat.CATEGORY_MESSAGE)).setPositiveButton(R.string.ok, new OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                LoginActivity.this.goAppstore("kr.ac.unist.atdc");
                            }
                        });
                        if (jSONObject != null && jSONObject.getString("flag").equalsIgnoreCase("0")) {
                            builder.setNegativeButton("Cancel", null);
                        }
                        builder.setCancelable(false).show();
                    }
                } catch (JSONException e) {
                    Log.w(LoginActivity.TAG, e.getMessage());
                    e.printStackTrace();
                }
            }
        });
    }

    private void checkDebuggingMode() {
        if (AndroidUtil.isDebuggable(this)) {
            this.edit_id_.setText(getString(R.string.test_id));
            this.edit_pw_.setText(getString(R.string.test_pw));
            return;
        }
        this.edit_id_.setText("");
        this.edit_pw_.setText("");
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            finish();
        }
    }

    private void goAppstore(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("market://details?id=");
        stringBuilder.append(str);
        intent.setData(Uri.parse(stringBuilder.toString()));
        startActivity(intent);
    }

    private int getVersionCode() {
        PackageInfo packageInfo;
        try {
            packageInfo = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo.versionCode;
    }

    private void hideKeyboard(View view) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
