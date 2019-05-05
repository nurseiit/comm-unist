package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import java.util.Date;

public final class ReservationBuilder extends IndexableBuilder<ReservationBuilder> {
    ReservationBuilder() {
        super("Reservation");
    }

    public final ReservationBuilder setPartySize(@NonNull long j) {
        return (ReservationBuilder) put("partySize", j);
    }

    public final ReservationBuilder setReservationFor(@NonNull LocalBusinessBuilder localBusinessBuilder) {
        return (ReservationBuilder) put("reservationFor", (IndexableBuilder[]) new LocalBusinessBuilder[]{localBusinessBuilder});
    }

    public final ReservationBuilder setStartDate(@NonNull Date date) {
        zzbo.zzu(date);
        return (ReservationBuilder) put("startDate", date.getTime());
    }
}
