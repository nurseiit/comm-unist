package com.google.android.gms.location.places.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.LatLngBounds;

public class SupportPlaceAutocompleteFragment extends Fragment {
    private View zzblm;
    private View zzbln;
    private EditText zzblo;
    private boolean zzblp;
    @Nullable
    private LatLngBounds zzblq;
    @Nullable
    private AutocompleteFilter zzblr;
    @Nullable
    private PlaceSelectionListener zzbls;

    private final void zzwb() {
        this.zzbln.setVisibility((this.zzblo.getText().toString().isEmpty() ^ 1) != 0 ? 0 : 8);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARNING: Removed duplicated region for block: B:12:? A:{SYNTHETIC, RETURN} */
    private final void zzwc() {
        /*
        r5 = this;
        r0 = -1;
        r1 = new com.google.android.gms.location.places.ui.PlaceAutocomplete$IntentBuilder;	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = 2;
        r1.<init>(r2);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = r5.zzblq;	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r1 = r1.setBoundsBias(r2);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = r5.zzblr;	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r1 = r1.setFilter(r2);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = r5.zzblo;	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = r2.getText();	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = r2.toString();	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r1 = r1.zzdB(r2);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = 1;
        r1 = r1.zzbn(r2);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r3 = r5.getActivity();	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r1 = r1.build(r3);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r5.zzblp = r2;	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = 30421; // 0x76d5 float:4.2629E-41 double:1.503E-319;
        r5.startActivityForResult(r1, r2);	 Catch:{ GooglePlayServicesRepairableException -> 0x003b, GooglePlayServicesNotAvailableException -> 0x0037 }
        r2 = -1;
        goto L_0x0047;
    L_0x0037:
        r1 = move-exception;
        r2 = r1.errorCode;
        goto L_0x0040;
    L_0x003b:
        r1 = move-exception;
        r2 = r1.getConnectionStatusCode();
    L_0x0040:
        r3 = "Places";
        r4 = "Could not open autocomplete activity";
        android.util.Log.e(r3, r4, r1);
    L_0x0047:
        if (r2 == r0) goto L_0x0056;
    L_0x0049:
        r0 = com.google.android.gms.common.GoogleApiAvailability.getInstance();
        r1 = r5.getActivity();
        r3 = 30422; // 0x76d6 float:4.263E-41 double:1.50305E-319;
        r0.showErrorDialogFragment(r1, r2, r3);
    L_0x0056:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.places.ui.SupportPlaceAutocompleteFragment.zzwc():void");
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        this.zzblp = false;
        if (i == 30421) {
            if (i2 == -1) {
                Place place = PlaceAutocomplete.getPlace(getActivity(), intent);
                if (this.zzbls != null) {
                    this.zzbls.onPlaceSelected(place);
                }
                setText(place.getName().toString());
            } else if (i2 == 2) {
                Status status = PlaceAutocomplete.getStatus(getActivity(), intent);
                if (this.zzbls != null) {
                    this.zzbls.onError(status);
                }
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.place_autocomplete_fragment, viewGroup, false);
        this.zzblm = inflate.findViewById(R.id.place_autocomplete_search_button);
        this.zzbln = inflate.findViewById(R.id.place_autocomplete_clear_button);
        this.zzblo = (EditText) inflate.findViewById(R.id.place_autocomplete_search_input);
        zze zze = new zze(this);
        this.zzblm.setOnClickListener(zze);
        this.zzblo.setOnClickListener(zze);
        this.zzbln.setOnClickListener(new zzf(this));
        zzwb();
        return inflate;
    }

    public void onDestroyView() {
        this.zzblm = null;
        this.zzbln = null;
        this.zzblo = null;
        super.onDestroyView();
    }

    public void setBoundsBias(@Nullable LatLngBounds latLngBounds) {
        this.zzblq = latLngBounds;
    }

    public void setFilter(@Nullable AutocompleteFilter autocompleteFilter) {
        this.zzblr = autocompleteFilter;
    }

    public void setHint(CharSequence charSequence) {
        this.zzblo.setHint(charSequence);
        this.zzblm.setContentDescription(charSequence);
    }

    public void setOnPlaceSelectedListener(PlaceSelectionListener placeSelectionListener) {
        this.zzbls = placeSelectionListener;
    }

    public void setText(CharSequence charSequence) {
        this.zzblo.setText(charSequence);
        zzwb();
    }
}
