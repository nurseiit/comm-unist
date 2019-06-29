package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class MusicRecordingBuilder extends IndexableBuilder<MusicRecordingBuilder> {
    MusicRecordingBuilder() {
        super("MusicRecording");
    }

    public final MusicRecordingBuilder setByArtist(@NonNull MusicGroupBuilder musicGroupBuilder) {
        return (MusicRecordingBuilder) put("byArtist", (IndexableBuilder[]) new MusicGroupBuilder[]{musicGroupBuilder});
    }

    public final MusicRecordingBuilder setDuration(int i) {
        return (MusicRecordingBuilder) put("duration", (long) i);
    }

    public final MusicRecordingBuilder setInAlbum(@NonNull MusicAlbumBuilder musicAlbumBuilder) {
        return (MusicRecordingBuilder) put("inAlbum", (IndexableBuilder[]) new MusicAlbumBuilder[]{musicAlbumBuilder});
    }

    public final MusicRecordingBuilder setInPlaylist(@NonNull MusicPlaylistBuilder... musicPlaylistBuilderArr) {
        return (MusicRecordingBuilder) put("inPlaylist", (IndexableBuilder[]) musicPlaylistBuilderArr);
    }
}
