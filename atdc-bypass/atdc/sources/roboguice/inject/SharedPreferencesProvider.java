package roboguice.inject;

import android.app.Application;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.inject.Inject;
import com.google.inject.Provider;
import java.io.File;

public class SharedPreferencesProvider implements Provider<SharedPreferences> {
    protected static final String ROBOGUICE_1_DEFAULT_FILENAME = "default.xml";
    @Inject
    protected Application application;
    protected String preferencesName;

    public static class PreferencesNameHolder {
        @SharedPreferencesName
        @Inject(optional = true)
        protected String value;
    }

    @Inject
    public SharedPreferencesProvider(PreferencesNameHolder preferencesNameHolder) {
        this.preferencesName = preferencesNameHolder.value;
    }

    public SharedPreferencesProvider(String str) {
        this.preferencesName = str;
    }

    public SharedPreferences get() {
        if (this.preferencesName != null) {
            return this.application.getSharedPreferences(this.preferencesName, 0);
        }
        if (new File("shared_prefs/default.xml").canRead()) {
            return this.application.getSharedPreferences(ROBOGUICE_1_DEFAULT_FILENAME, 0);
        }
        return PreferenceManager.getDefaultSharedPreferences(this.application);
    }
}
