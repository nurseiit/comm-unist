package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class MusicAlbumBuilder extends IndexableBuilder<MusicAlbumBuilder> {
    MusicAlbumBuilder() {
        super("MusicAlbum");
    }

    public final MusicAlbumBuilder setByArtist(@NonNull MusicGroupBuilder musicGroupBuilder) {
        return (MusicAlbumBuilder) put("byArtist", (IndexableBuilder[]) new MusicGroupBuilder[]{musicGroupBuilder});
    }

    public final MusicAlbumBuilder setNumTracks(int i) {
        return (MusicAlbumBuilder) put("numTracks", (long) i);
    }

    public final MusicAlbumBuilder setTrack(@NonNull MusicRecordingBuilder... musicRecordingBuilderArr) {
        return (MusicAlbumBuilder) put("track", (IndexableBuilder[]) musicRecordingBuilderArr);
    }
}
