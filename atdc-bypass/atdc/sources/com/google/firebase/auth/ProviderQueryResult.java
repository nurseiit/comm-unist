package com.google.firebase.auth;

import android.support.annotation.Nullable;
import java.util.List;

public interface ProviderQueryResult {
    @Nullable
    List<String> getProviders();
}
