package com.google.firebase.appindexing.builders;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.plus.PlusShare;
import com.google.firebase.appindexing.FirebaseAppIndexingInvalidArgumentException;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.appindexing.Indexable.Metadata;
import com.google.firebase.appindexing.Indexable.Metadata.Builder;
import com.google.firebase.appindexing.internal.Thing;
import com.google.firebase.appindexing.internal.Thing.zza;
import com.google.firebase.appindexing.internal.zzw;
import java.util.Arrays;

public class IndexableBuilder<T extends IndexableBuilder<?>> {
    private String zzD;
    private final String zzVB;
    private final Bundle zzajQ = new Bundle();
    private zza zzbVH;

    protected IndexableBuilder(@NonNull String str) {
        zzbo.zzu(str);
        zzbo.zzcF(str);
        this.zzVB = str;
    }

    private final T zza(@NonNull String str, @NonNull Thing... thingArr) {
        zzbo.zzu(str);
        zzbo.zzu(thingArr);
        if (thingArr.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < thingArr.length; i2++) {
                thingArr[i] = thingArr[i2];
                if (thingArr[i2] == null) {
                    StringBuilder stringBuilder = new StringBuilder(58);
                    stringBuilder.append("Thing at ");
                    stringBuilder.append(i2);
                    stringBuilder.append(" is null and is ignored by put method.");
                    zzw.zzgo(stringBuilder.toString());
                } else {
                    i++;
                }
            }
            if (i > 0) {
                this.zzajQ.putParcelableArray(str, (Parcelable[]) zzc((Thing[]) Arrays.copyOfRange(thingArr, 0, i)));
                return this;
            }
        }
        zzw.zzgo("Thing array is empty and is ignored by put method.");
        return this;
    }

    private static <S> S[] zzc(S[] sArr) {
        if (sArr.length < 100) {
            return sArr;
        }
        zzw.zzgo("Input Array of elements is too big, cutting off.");
        return Arrays.copyOf(sArr, 100);
    }

    public final Indexable build() {
        return new Thing(new Bundle(this.zzajQ), this.zzbVH == null ? Metadata.zzbVD : this.zzbVH, this.zzD, this.zzVB);
    }

    public T put(@NonNull String str, @NonNull long... jArr) {
        Bundle bundle = this.zzajQ;
        zzbo.zzu(str);
        zzbo.zzu(jArr);
        if (jArr.length > 0) {
            if (jArr.length >= 100) {
                zzw.zzgo("Input Array of elements is too big, cutting off.");
                jArr = Arrays.copyOf(jArr, 100);
            }
            bundle.putLongArray(str, jArr);
            return this;
        }
        zzw.zzgo("Long array is empty and is ignored by put method.");
        return this;
    }

    public T put(@NonNull String str, @NonNull Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
        zzbo.zzu(str);
        zzbo.zzu(indexableArr);
        Thing[] thingArr = new Thing[indexableArr.length];
        int i = 0;
        while (i < indexableArr.length) {
            if (indexableArr[i] == null || (indexableArr[i] instanceof Thing)) {
                thingArr[i] = (Thing) indexableArr[i];
                i++;
            } else {
                throw new FirebaseAppIndexingInvalidArgumentException("Invalid Indexable encountered. Use Indexable.Builder or convenience methods under Indexables to create the Indexable.");
            }
        }
        zza(str, thingArr);
        return this;
    }

    /* Access modifiers changed, original: protected|varargs */
    public <S extends IndexableBuilder> T put(@NonNull String str, @NonNull S... sArr) {
        zzbo.zzu(str);
        zzbo.zzu(sArr);
        if (sArr.length > 0) {
            Thing[] thingArr = new Thing[sArr.length];
            for (int i = 0; i < sArr.length; i++) {
                if (sArr[i] == null) {
                    StringBuilder stringBuilder = new StringBuilder(60);
                    stringBuilder.append("Builder at ");
                    stringBuilder.append(i);
                    stringBuilder.append(" is null and is ignored by put method.");
                    zzw.zzgo(stringBuilder.toString());
                } else {
                    thingArr[i] = (Thing) sArr[i].build();
                }
            }
            if (thingArr.length > 0) {
                zza(str, thingArr);
                return this;
            }
        }
        zzw.zzgo("Builder array is empty and is ignored by put method.");
        return this;
    }

    public T put(@NonNull String str, @NonNull String... strArr) {
        Bundle bundle = this.zzajQ;
        zzbo.zzu(str);
        zzbo.zzu(strArr);
        strArr = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (strArr.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < Math.min(strArr.length, 100); i2++) {
                strArr[i] = strArr[i2];
                if (strArr[i2] == null) {
                    StringBuilder stringBuilder = new StringBuilder(59);
                    stringBuilder.append("String at ");
                    stringBuilder.append(i2);
                    stringBuilder.append(" is null and is ignored by put method.");
                    zzw.zzgo(stringBuilder.toString());
                } else {
                    int length = strArr[i].length();
                    int i3 = Indexable.MAX_STRING_LENGTH;
                    if (length > Indexable.MAX_STRING_LENGTH) {
                        StringBuilder stringBuilder2 = new StringBuilder(53);
                        stringBuilder2.append("String at ");
                        stringBuilder2.append(i2);
                        stringBuilder2.append(" is too long, truncating string.");
                        zzw.zzgo(stringBuilder2.toString());
                        String str2 = strArr[i];
                        if (str2.length() > Indexable.MAX_STRING_LENGTH) {
                            if (Character.isHighSurrogate(str2.charAt(19999)) && Character.isLowSurrogate(str2.charAt(Indexable.MAX_STRING_LENGTH))) {
                                i3 = 19999;
                            }
                            str2 = str2.substring(0, i3);
                        }
                        strArr[i] = str2;
                    }
                    i++;
                }
            }
            if (i > 0) {
                bundle.putStringArray(str, (String[]) zzc((String[]) Arrays.copyOfRange(strArr, 0, i)));
                return this;
            }
        }
        zzw.zzgo("String array is empty and is ignored by put method.");
        return this;
    }

    public T put(@NonNull String str, @NonNull boolean... zArr) {
        Bundle bundle = this.zzajQ;
        zzbo.zzu(str);
        zzbo.zzu(zArr);
        if (zArr.length > 0) {
            if (zArr.length >= 100) {
                zzw.zzgo("Input Array of elements is too big, cutting off.");
                zArr = Arrays.copyOf(zArr, 100);
            }
            bundle.putBooleanArray(str, zArr);
            return this;
        }
        zzw.zzgo("Boolean array is empty and is ignored by put method.");
        return this;
    }

    public final T setDescription(@NonNull String str) {
        zzbo.zzu(str);
        return put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, str);
    }

    public final T setImage(@NonNull String str) {
        zzbo.zzu(str);
        return put("image", str);
    }

    public T setMetadata(@NonNull Builder builder) {
        zzbo.zza(this.zzbVH == null, (Object) "setMetadata may only be called once");
        zzbo.zzu(builder);
        this.zzbVH = builder.zzEA();
        return this;
    }

    public final T setName(@NonNull String str) {
        zzbo.zzu(str);
        return put("name", str);
    }

    public final T setSameAs(@NonNull String str) {
        zzbo.zzu(str);
        return put("sameAs", str);
    }

    public final T setUrl(@NonNull String str) {
        zzbo.zzu(str);
        this.zzD = str;
        return this;
    }
}
