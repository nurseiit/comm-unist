package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class UserAddressRequest extends zza implements ReflectedParcelable {
    public static final Creator<UserAddressRequest> CREATOR = new zzd();
    List<CountrySpecification> zzbgB;

    public final class Builder {
        private Builder() {
        }

        /* synthetic */ Builder(UserAddressRequest userAddressRequest, zzc zzc) {
            this();
        }

        public final Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.zzbgB == null) {
                UserAddressRequest.this.zzbgB = new ArrayList();
            }
            UserAddressRequest.this.zzbgB.add(countrySpecification);
            return this;
        }

        public final Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (UserAddressRequest.this.zzbgB == null) {
                UserAddressRequest.this.zzbgB = new ArrayList();
            }
            UserAddressRequest.this.zzbgB.addAll(collection);
            return this;
        }

        public final UserAddressRequest build() {
            if (UserAddressRequest.this.zzbgB != null) {
                UserAddressRequest.this.zzbgB = Collections.unmodifiableList(UserAddressRequest.this.zzbgB);
            }
            return UserAddressRequest.this;
        }
    }

    UserAddressRequest() {
    }

    UserAddressRequest(List<CountrySpecification> list) {
        this.zzbgB = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder(userAddressRequest, null);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzbgB, false);
        zzd.zzI(parcel, i);
    }
}
