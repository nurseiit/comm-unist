package org.altbeacon.beacon.startup;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.altbeacon.beacon.BeaconConsumer;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.Region;

public class RegionBootstrap {
    protected static final String TAG = "AppStarter";
    private BootstrapNotifier application;
    private BeaconConsumer beaconConsumer;
    private BeaconManager beaconManager;
    private boolean disabled = false;
    private List<Region> regions;

    private class InternalBeaconConsumer implements BeaconConsumer {
        private InternalBeaconConsumer() {
        }

        public void onBeaconServiceConnect() {
            BeaconManager.logDebug(RegionBootstrap.TAG, "Activating background region monitoring");
            RegionBootstrap.this.beaconManager.setMonitorNotifier(RegionBootstrap.this.application);
            try {
                for (Region region : RegionBootstrap.this.regions) {
                    String str = RegionBootstrap.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Background region monitoring activated for region ");
                    stringBuilder.append(region);
                    BeaconManager.logDebug(str, stringBuilder.toString());
                    RegionBootstrap.this.beaconManager.startMonitoringBeaconsInRegion(region);
                    if (RegionBootstrap.this.beaconManager.isBackgroundModeUninitialized()) {
                        RegionBootstrap.this.beaconManager.setBackgroundMode(true);
                    }
                }
            } catch (RemoteException e) {
                String str2 = RegionBootstrap.TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("Can't set up bootstrap regions due to ");
                stringBuilder2.append(e);
                Log.e(str2, stringBuilder2.toString());
            }
        }

        public boolean bindService(Intent intent, ServiceConnection serviceConnection, int i) {
            return RegionBootstrap.this.application.getApplicationContext().bindService(intent, serviceConnection, i);
        }

        public Context getApplicationContext() {
            return RegionBootstrap.this.application.getApplicationContext();
        }

        public void unbindService(ServiceConnection serviceConnection) {
            RegionBootstrap.this.application.getApplicationContext().unbindService(serviceConnection);
        }
    }

    public RegionBootstrap(BootstrapNotifier bootstrapNotifier, Region region) {
        if (bootstrapNotifier.getApplicationContext() == null) {
            throw new NullPointerException("The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?");
        }
        this.beaconManager = BeaconManager.getInstanceForApplication(bootstrapNotifier.getApplicationContext());
        this.application = bootstrapNotifier;
        this.regions = new ArrayList();
        this.regions.add(region);
        this.beaconConsumer = new InternalBeaconConsumer();
        this.beaconManager.bind(this.beaconConsumer);
        BeaconManager.logDebug(TAG, "Waiting for BeaconService connection");
    }

    public RegionBootstrap(BootstrapNotifier bootstrapNotifier, List<Region> list) {
        if (bootstrapNotifier.getApplicationContext() == null) {
            throw new NullPointerException("The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?");
        }
        this.beaconManager = BeaconManager.getInstanceForApplication(bootstrapNotifier.getApplicationContext());
        this.application = bootstrapNotifier;
        this.regions = list;
        this.beaconConsumer = new InternalBeaconConsumer();
        this.beaconManager.bind(this.beaconConsumer);
        BeaconManager.logDebug(TAG, "Waiting for BeaconService connection");
    }

    public void disable() {
        if (!this.disabled) {
            this.disabled = true;
            try {
                for (Region stopMonitoringBeaconsInRegion : this.regions) {
                    this.beaconManager.stopMonitoringBeaconsInRegion(stopMonitoringBeaconsInRegion);
                }
            } catch (RemoteException e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Can't stop bootstrap regions due to ");
                stringBuilder.append(e);
                Log.e(str, stringBuilder.toString());
            }
            this.beaconManager.unbind(this.beaconConsumer);
        }
    }
}
