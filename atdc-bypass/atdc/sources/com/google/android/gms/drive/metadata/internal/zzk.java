package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveFolder;

public final class zzk {
    private String zzaPN;

    private zzk(String str) {
        this.zzaPN = str.toLowerCase();
    }

    public static zzk zzcS(String str) {
        boolean z = str == null || !str.isEmpty();
        zzbo.zzaf(z);
        return str == null ? null : new zzk(str);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        return this.zzaPN.equals(((zzk) obj).zzaPN);
    }

    public final int hashCode() {
        return this.zzaPN.hashCode();
    }

    public final boolean isFolder() {
        return this.zzaPN.equals(DriveFolder.MIME_TYPE);
    }

    public final String toString() {
        return this.zzaPN;
    }

    public final boolean zzts() {
        return this.zzaPN.startsWith("application/vnd.google-apps");
    }
}
