package com.google.android.gms.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

@Deprecated
public interface People {

    public interface OrderBy {
        public static final int ALPHABETICAL = 0;
        public static final int BEST = 1;
    }

    public interface LoadPeopleResult extends Releasable, Result {
        String getNextPageToken();

        PersonBuffer getPersonBuffer();
    }

    @Deprecated
    Person getCurrentPerson(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<LoadPeopleResult> load(GoogleApiClient googleApiClient, Collection<String> collection);

    @Deprecated
    PendingResult<LoadPeopleResult> load(GoogleApiClient googleApiClient, String... strArr);

    @Deprecated
    PendingResult<LoadPeopleResult> loadConnected(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, int i, String str);

    @Deprecated
    PendingResult<LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, String str);
}
