package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzcai;
import java.util.HashMap;

public final class ScoreSubmissionData {
    private static final String[] zzbcJ = new String[]{"leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"};
    private String zzaxn;
    private int zzaxu;
    private String zzbcL;
    private HashMap<Integer, Result> zzbdq = new HashMap();

    public static final class Result {
        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public Result(long j, String str, String str2, boolean z) {
            this.rawScore = j;
            this.formattedScore = str;
            this.scoreTag = str2;
            this.newBest = z;
        }

        public final String toString() {
            return zzbe.zzt(this).zzg("RawScore", Long.valueOf(this.rawScore)).zzg("FormattedScore", this.formattedScore).zzg("ScoreTag", this.scoreTag).zzg("NewBest", Boolean.valueOf(this.newBest)).toString();
        }
    }

    public ScoreSubmissionData(DataHolder dataHolder) {
        this.zzaxu = dataHolder.getStatusCode();
        int count = dataHolder.getCount();
        zzbo.zzaf(count == 3);
        for (int i = 0; i < count; i++) {
            int zzat = dataHolder.zzat(i);
            if (i == 0) {
                this.zzbcL = dataHolder.zzd("leaderboardId", i, zzat);
                this.zzaxn = dataHolder.zzd("playerId", i, zzat);
            }
            if (dataHolder.zze("hasResult", i, zzat)) {
                this.zzbdq.put(Integer.valueOf(dataHolder.zzc("timeSpan", i, zzat)), new Result(dataHolder.zzb("rawScore", i, zzat), dataHolder.zzd("formattedScore", i, zzat), dataHolder.zzd("scoreTag", i, zzat), dataHolder.zze("newBest", i, zzat)));
            }
        }
    }

    public final String getLeaderboardId() {
        return this.zzbcL;
    }

    public final String getPlayerId() {
        return this.zzaxn;
    }

    public final Result getScoreResult(int i) {
        return (Result) this.zzbdq.get(Integer.valueOf(i));
    }

    public final String toString() {
        zzbg zzg = zzbe.zzt(this).zzg("PlayerId", this.zzaxn).zzg("StatusCode", Integer.valueOf(this.zzaxu));
        for (int i = 0; i < 3; i++) {
            Result result = (Result) this.zzbdq.get(Integer.valueOf(i));
            zzg.zzg("TimesSpan", zzcai.zzbc(i));
            zzg.zzg("Result", result == null ? "null" : result.toString());
        }
        return zzg.toString();
    }
}
