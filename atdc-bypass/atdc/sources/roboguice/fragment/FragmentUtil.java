package roboguice.fragment;

import android.app.Activity;
import android.view.View;
import com.google.inject.Provider;
import edu.umd.cs.findbugs.annotations.SuppressWarnings;

public final class FragmentUtil {
    public static final String NATIVE_PACKAGE = "android.app.";
    public static final String SUPPORT_PACKAGE = "android.support.v4.app.";
    @SuppressWarnings({"MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"})
    public static boolean hasNative = false;
    @SuppressWarnings({"MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"})
    public static boolean hasSupport = false;
    @SuppressWarnings({"MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"})
    public static f nativeFrag;
    @SuppressWarnings({"MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"})
    public static Class<? extends Activity> supportActivity;
    @SuppressWarnings({"MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"})
    public static f supportFrag;

    public interface f<fragType, fragManagerType> {
        fragType findFragmentById(fragManagerType fragmanagertype, int i);

        fragType findFragmentByTag(fragManagerType fragmanagertype, String str);

        Class<Provider<fragManagerType>> fragmentManagerProviderType();

        Class<fragManagerType> fragmentManagerType();

        Class<fragType> fragmentType();

        View getView(fragType fragtype);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0019 */
    /* JADX WARNING: Failed to process nested try/catch */
    static {
        /*
        r0 = 0;
        r1 = 1;
        r2 = "roboguice.fragment.provided.NativeFragmentUtil";
        r2 = java.lang.Class.forName(r2);	 Catch:{ Throwable -> 0x0019 }
        r2 = r2.newInstance();	 Catch:{ Throwable -> 0x0019 }
        r2 = (roboguice.fragment.FragmentUtil.f) r2;	 Catch:{ Throwable -> 0x0019 }
        nativeFrag = r2;	 Catch:{ Throwable -> 0x0019 }
        r2 = nativeFrag;	 Catch:{ Throwable -> 0x0019 }
        if (r2 == 0) goto L_0x0016;
    L_0x0014:
        r2 = 1;
        goto L_0x0017;
    L_0x0016:
        r2 = 0;
    L_0x0017:
        hasNative = r2;	 Catch:{ Throwable -> 0x0019 }
    L_0x0019:
        r2 = "roboguice.fragment.support.SupportFragmentUtil";
        r2 = java.lang.Class.forName(r2);	 Catch:{ Throwable -> 0x003a }
        r2 = r2.newInstance();	 Catch:{ Throwable -> 0x003a }
        r2 = (roboguice.fragment.FragmentUtil.f) r2;	 Catch:{ Throwable -> 0x003a }
        supportFrag = r2;	 Catch:{ Throwable -> 0x003a }
        r2 = "android.support.v4.app.FragmentActivity";
        r2 = java.lang.Class.forName(r2);	 Catch:{ Throwable -> 0x003a }
        supportActivity = r2;	 Catch:{ Throwable -> 0x003a }
        r2 = supportFrag;	 Catch:{ Throwable -> 0x003a }
        if (r2 == 0) goto L_0x0038;
    L_0x0033:
        r2 = supportActivity;	 Catch:{ Throwable -> 0x003a }
        if (r2 == 0) goto L_0x0038;
    L_0x0037:
        r0 = 1;
    L_0x0038:
        hasSupport = r0;	 Catch:{ Throwable -> 0x003a }
    L_0x003a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: roboguice.fragment.FragmentUtil.<clinit>():void");
    }

    private FragmentUtil() {
    }
}
