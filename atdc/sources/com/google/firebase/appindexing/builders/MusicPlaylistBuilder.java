package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public class MusicPlaylistBuilder extends IndexableBuilder<MusicPlaylistBuilder> {
    MusicPlaylistBuilder() {
        super("MusicPlaylist");
    }

    public MusicPlaylistBuilder setNumTracks(int i) {
        return (MusicPlaylistBuilder) put("numTracks", (long) i);
    }

    public MusicPlaylistBuilder setTrack(@NonNull MusicRecordingBuilder... musicRecordingBuilderArr) {
        return (MusicPlaylistBuilder) put("track", (IndexableBuilder[]) musicRecordingBuilderArr);
    }
}
