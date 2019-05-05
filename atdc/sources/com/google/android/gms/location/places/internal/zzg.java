package com.google.android.gms.location.places.internal;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import java.util.Collection;
import java.util.List;

public final class zzg {
    public static CharSequence zza(String str, List<zzb> list, CharacterStyle characterStyle) {
        if (characterStyle == null) {
            return str;
        }
        SpannableString spannableString = new SpannableString(str);
        for (zzb zzb : list) {
            spannableString.setSpan(CharacterStyle.wrap(characterStyle), zzb.mOffset, zzb.mOffset + zzb.mLength, 0);
        }
        return spannableString;
    }

    public static String zzi(Collection<String> collection) {
        return (collection == null || collection.isEmpty()) ? null : TextUtils.join(", ", collection);
    }
}
