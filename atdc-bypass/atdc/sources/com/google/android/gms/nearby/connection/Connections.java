package com.google.android.gms.nearby.connection;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;

public interface Connections {
    @Deprecated
    public static final long DURATION_INDEFINITE = 0;
    public static final int MAX_BYTES_DATA_SIZE = 32768;
    @Deprecated
    public static final int MAX_RELIABLE_MESSAGE_LEN = 4096;
    @Deprecated
    public static final int MAX_UNRELIABLE_MESSAGE_LEN = 1168;

    @Deprecated
    public static abstract class ConnectionRequestListener {
        public void onConnectionRequest(String str, String str2, byte[] bArr) {
        }
    }

    @Deprecated
    public interface ConnectionResponseCallback {
        void onConnectionResponse(String str, Status status, byte[] bArr);
    }

    @Deprecated
    public static abstract class EndpointDiscoveryListener {
        public void onEndpointFound(String str, String str2, String str3) {
        }

        public abstract void onEndpointLost(String str);
    }

    @Deprecated
    public interface MessageListener {
        @Deprecated
        void onDisconnected(String str);

        @Deprecated
        void onMessageReceived(String str, byte[] bArr, boolean z);
    }

    public interface StartAdvertisingResult extends Result {
        String getLocalEndpointName();
    }

    PendingResult<Status> acceptConnection(GoogleApiClient googleApiClient, String str, PayloadCallback payloadCallback);

    @Deprecated
    PendingResult<Status> acceptConnectionRequest(GoogleApiClient googleApiClient, String str, byte[] bArr, MessageListener messageListener);

    void disconnectFromEndpoint(GoogleApiClient googleApiClient, String str);

    PendingResult<Status> rejectConnection(GoogleApiClient googleApiClient, String str);

    @Deprecated
    PendingResult<Status> rejectConnectionRequest(GoogleApiClient googleApiClient, String str);

    PendingResult<Status> requestConnection(GoogleApiClient googleApiClient, @Nullable String str, String str2, ConnectionLifecycleCallback connectionLifecycleCallback);

    @Deprecated
    PendingResult<Status> sendConnectionRequest(GoogleApiClient googleApiClient, String str, String str2, byte[] bArr, ConnectionResponseCallback connectionResponseCallback, MessageListener messageListener);

    PendingResult<Status> sendPayload(GoogleApiClient googleApiClient, String str, Payload payload);

    PendingResult<Status> sendPayload(GoogleApiClient googleApiClient, List<String> list, Payload payload);

    @Deprecated
    void sendReliableMessage(GoogleApiClient googleApiClient, String str, byte[] bArr);

    @Deprecated
    void sendReliableMessage(GoogleApiClient googleApiClient, List<String> list, byte[] bArr);

    @Deprecated
    void sendUnreliableMessage(GoogleApiClient googleApiClient, String str, byte[] bArr);

    @Deprecated
    void sendUnreliableMessage(GoogleApiClient googleApiClient, List<String> list, byte[] bArr);

    @Deprecated
    PendingResult<StartAdvertisingResult> startAdvertising(GoogleApiClient googleApiClient, String str, AppMetadata appMetadata, long j, ConnectionRequestListener connectionRequestListener);

    PendingResult<StartAdvertisingResult> startAdvertising(GoogleApiClient googleApiClient, String str, String str2, ConnectionLifecycleCallback connectionLifecycleCallback, AdvertisingOptions advertisingOptions);

    @Deprecated
    PendingResult<Status> startDiscovery(GoogleApiClient googleApiClient, String str, long j, EndpointDiscoveryListener endpointDiscoveryListener);

    PendingResult<Status> startDiscovery(GoogleApiClient googleApiClient, String str, EndpointDiscoveryCallback endpointDiscoveryCallback, DiscoveryOptions discoveryOptions);

    void stopAdvertising(GoogleApiClient googleApiClient);

    void stopAllEndpoints(GoogleApiClient googleApiClient);

    void stopDiscovery(GoogleApiClient googleApiClient);

    @Deprecated
    void stopDiscovery(GoogleApiClient googleApiClient, String str);
}
