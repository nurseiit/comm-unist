package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public class NotificationOptions extends zza {
    public static final Creator<NotificationOptions> CREATOR = new zzh();
    public static final long SKIP_STEP_TEN_SECONDS_IN_MS = 10000;
    public static final long SKIP_STEP_THIRTY_SECONDS_IN_MS = 30000;
    private static final List<String> zzatN = Arrays.asList(new String[]{MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING});
    private static final int[] zzatO = new int[]{0, 1};
    private final List<String> zzatP;
    private final int[] zzatQ;
    private final long zzatR;
    private final String zzatS;
    private final int zzatT;
    private final int zzatU;
    private final int zzatV;
    private final int zzatW;
    private final int zzatX;
    private final int zzatY;
    private final int zzatZ;
    private final int zzaua;
    private final int zzaub;
    private final int zzauc;
    private final int zzaud;
    private final int zzaue;
    private final int zzauf;
    private final int zzaug;
    private final int zzauh;
    private final int zzaui;
    private final int zzauj;
    private final int zzauk;
    private final int zzaul;
    private final int zzaum;
    private final int zzaun;
    private final int zzauo;
    private final int zzaup;
    private final int zzauq;
    private final int zzaur;
    private final int zzaus;
    private final int zzaut;

    public static final class Builder {
        private List<String> zzatP = NotificationOptions.zzatN;
        private int[] zzatQ = NotificationOptions.zzatO;
        private long zzatR = 10000;
        private String zzatS;
        private int zzatT = R.drawable.cast_ic_notification_small_icon;
        private int zzatU = R.drawable.cast_ic_notification_stop_live_stream;
        private int zzatV = R.drawable.cast_ic_notification_pause;
        private int zzatW = R.drawable.cast_ic_notification_play;
        private int zzatX = R.drawable.cast_ic_notification_skip_next;
        private int zzatY = R.drawable.cast_ic_notification_skip_prev;
        private int zzatZ = R.drawable.cast_ic_notification_forward;
        private int zzaua = R.drawable.cast_ic_notification_forward10;
        private int zzaub = R.drawable.cast_ic_notification_forward30;
        private int zzauc = R.drawable.cast_ic_notification_rewind;
        private int zzaud = R.drawable.cast_ic_notification_rewind10;
        private int zzaue = R.drawable.cast_ic_notification_rewind30;
        private int zzauf = R.drawable.cast_ic_notification_disconnect;

        public final NotificationOptions build() {
            List list = this.zzatP;
            int[] iArr = this.zzatQ;
            long j = this.zzatR;
            String str = this.zzatS;
            int i = this.zzatT;
            int i2 = this.zzatU;
            int i3 = this.zzatV;
            int i4 = this.zzatW;
            int i5 = this.zzatX;
            int i6 = this.zzatY;
            int i7 = this.zzatZ;
            int i8 = this.zzaua;
            int i9 = this.zzaub;
            int i10 = this.zzauc;
            int i11 = i9;
            int i12 = this.zzaud;
            int i13 = this.zzaue;
            return new NotificationOptions(list, iArr, j, str, i, i2, i3, i4, i5, i6, i7, i8, i11, i10, i12, i13, this.zzauf, R.dimen.cast_notification_image_size, R.string.cast_casting_to_device, R.string.cast_stop_live_stream, R.string.cast_pause, R.string.cast_play, R.string.cast_skip_next, R.string.cast_skip_prev, R.string.cast_forward, R.string.cast_forward_10, R.string.cast_forward_30, R.string.cast_rewind, R.string.cast_rewind_10, R.string.cast_rewind_30, R.string.cast_disconnect);
        }

        public final Builder setActions(List<String> list, int[] iArr) {
            if (list == null && iArr != null) {
                throw new IllegalArgumentException("When setting actions to null, you must also set compatActionIndices to null.");
            } else if (list == null || iArr != null) {
                int[] zznW;
                if (list == null || iArr == null) {
                    this.zzatP = NotificationOptions.zzatN;
                    zznW = NotificationOptions.zzatO;
                } else {
                    int size = list.size();
                    if (iArr.length > size) {
                        throw new IllegalArgumentException(String.format(Locale.ROOT, "Invalid number of compat actions: %d > %d.", new Object[]{Integer.valueOf(iArr.length), Integer.valueOf(size)}));
                    }
                    for (int i : iArr) {
                        if (i < 0 || i >= size) {
                            throw new IllegalArgumentException(String.format(Locale.ROOT, "Index %d in compatActionIndices out of range: [0, %d]", new Object[]{Integer.valueOf(i), Integer.valueOf(size - 1)}));
                        }
                    }
                    this.zzatP = new ArrayList(list);
                    zznW = Arrays.copyOf(iArr, iArr.length);
                }
                this.zzatQ = zznW;
                return this;
            } else {
                throw new IllegalArgumentException("When setting compatActionIndices to null, you must also set actions to null.");
            }
        }

        public final Builder setDisconnectDrawableResId(int i) {
            this.zzauf = i;
            return this;
        }

        public final Builder setForward10DrawableResId(int i) {
            this.zzaua = i;
            return this;
        }

        public final Builder setForward30DrawableResId(int i) {
            this.zzaub = i;
            return this;
        }

        public final Builder setForwardDrawableResId(int i) {
            this.zzatZ = i;
            return this;
        }

        public final Builder setPauseDrawableResId(int i) {
            this.zzatV = i;
            return this;
        }

        public final Builder setPlayDrawableResId(int i) {
            this.zzatW = i;
            return this;
        }

        public final Builder setRewind10DrawableResId(int i) {
            this.zzaud = i;
            return this;
        }

        public final Builder setRewind30DrawableResId(int i) {
            this.zzaue = i;
            return this;
        }

        public final Builder setRewindDrawableResId(int i) {
            this.zzauc = i;
            return this;
        }

        public final Builder setSkipNextDrawableResId(int i) {
            this.zzatX = i;
            return this;
        }

        public final Builder setSkipPrevDrawableResId(int i) {
            this.zzatY = i;
            return this;
        }

        public final Builder setSkipStepMs(long j) {
            zzbo.zzb(j > 0, (Object) "skipStepMs must be positive.");
            this.zzatR = j;
            return this;
        }

        public final Builder setSmallIconDrawableResId(int i) {
            this.zzatT = i;
            return this;
        }

        public final Builder setStopLiveStreamDrawableResId(int i) {
            this.zzatU = i;
            return this;
        }

        public final Builder setTargetActivityClassName(String str) {
            this.zzatS = str;
            return this;
        }
    }

    public NotificationOptions(List<String> list, int[] iArr, long j, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27) {
        List<String> list2 = list;
        int[] iArr2 = iArr;
        if (list2 != null) {
            this.zzatP = new ArrayList(list2);
        } else {
            this.zzatP = null;
        }
        if (iArr2 != null) {
            this.zzatQ = Arrays.copyOf(iArr2, iArr2.length);
        } else {
            this.zzatQ = null;
        }
        this.zzatR = j;
        this.zzatS = str;
        this.zzatT = i;
        this.zzatU = i2;
        this.zzatV = i3;
        this.zzatW = i4;
        this.zzatX = i5;
        this.zzatY = i6;
        this.zzatZ = i7;
        this.zzaua = i8;
        this.zzaub = i9;
        this.zzauc = i10;
        this.zzaud = i11;
        this.zzaue = i12;
        this.zzauf = i13;
        this.zzaug = i14;
        this.zzauh = i15;
        this.zzaui = i16;
        this.zzauj = i17;
        this.zzauk = i18;
        this.zzaul = i19;
        this.zzaum = i20;
        this.zzaun = i21;
        this.zzauo = i22;
        this.zzaup = i23;
        this.zzauq = i24;
        this.zzaur = i25;
        this.zzaus = i26;
        this.zzaut = i27;
    }

    public List<String> getActions() {
        return this.zzatP;
    }

    public int getCastingToDeviceStringResId() {
        return this.zzauh;
    }

    public int[] getCompatActionIndices() {
        return Arrays.copyOf(this.zzatQ, this.zzatQ.length);
    }

    public int getDisconnectDrawableResId() {
        return this.zzauf;
    }

    public int getForward10DrawableResId() {
        return this.zzaua;
    }

    public int getForward30DrawableResId() {
        return this.zzaub;
    }

    public int getForwardDrawableResId() {
        return this.zzatZ;
    }

    public int getPauseDrawableResId() {
        return this.zzatV;
    }

    public int getPlayDrawableResId() {
        return this.zzatW;
    }

    public int getRewind10DrawableResId() {
        return this.zzaud;
    }

    public int getRewind30DrawableResId() {
        return this.zzaue;
    }

    public int getRewindDrawableResId() {
        return this.zzauc;
    }

    public int getSkipNextDrawableResId() {
        return this.zzatX;
    }

    public int getSkipPrevDrawableResId() {
        return this.zzatY;
    }

    public long getSkipStepMs() {
        return this.zzatR;
    }

    public int getSmallIconDrawableResId() {
        return this.zzatT;
    }

    public int getStopLiveStreamDrawableResId() {
        return this.zzatU;
    }

    public int getStopLiveStreamTitleResId() {
        return this.zzaui;
    }

    public String getTargetActivityClassName() {
        return this.zzatS;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzb(parcel, 2, getActions(), false);
        zzd.zza(parcel, 3, getCompatActionIndices(), false);
        zzd.zza(parcel, 4, getSkipStepMs());
        zzd.zza(parcel, 5, getTargetActivityClassName(), false);
        zzd.zzc(parcel, 6, getSmallIconDrawableResId());
        zzd.zzc(parcel, 7, getStopLiveStreamDrawableResId());
        zzd.zzc(parcel, 8, getPauseDrawableResId());
        zzd.zzc(parcel, 9, getPlayDrawableResId());
        zzd.zzc(parcel, 10, getSkipNextDrawableResId());
        zzd.zzc(parcel, 11, getSkipPrevDrawableResId());
        zzd.zzc(parcel, 12, getForwardDrawableResId());
        zzd.zzc(parcel, 13, getForward10DrawableResId());
        zzd.zzc(parcel, 14, getForward30DrawableResId());
        zzd.zzc(parcel, 15, getRewindDrawableResId());
        zzd.zzc(parcel, 16, getRewind10DrawableResId());
        zzd.zzc(parcel, 17, getRewind30DrawableResId());
        zzd.zzc(parcel, 18, getDisconnectDrawableResId());
        zzd.zzc(parcel, 19, this.zzaug);
        zzd.zzc(parcel, 20, getCastingToDeviceStringResId());
        zzd.zzc(parcel, 21, getStopLiveStreamTitleResId());
        zzd.zzc(parcel, 22, this.zzauj);
        zzd.zzc(parcel, 23, this.zzauk);
        zzd.zzc(parcel, 24, this.zzaul);
        zzd.zzc(parcel, 25, this.zzaum);
        zzd.zzc(parcel, 26, this.zzaun);
        zzd.zzc(parcel, 27, this.zzauo);
        zzd.zzc(parcel, 28, this.zzaup);
        zzd.zzc(parcel, 29, this.zzauq);
        zzd.zzc(parcel, 30, this.zzaur);
        zzd.zzc(parcel, 31, this.zzaus);
        zzd.zzc(parcel, 32, this.zzaut);
        zzd.zzI(parcel, i);
    }
}
