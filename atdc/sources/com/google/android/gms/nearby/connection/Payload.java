package com.google.android.gms.nearby.connection;

import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveFile;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.UUID;

public class Payload {
    private final long id;
    @Type
    private final int type;
    @Nullable
    private final byte[] zzbws;
    @Nullable
    private final File zzbwt;
    @Nullable
    private final Stream zzbwu;

    public static class File {
        @Nullable
        private final java.io.File zzbwv;
        private final ParcelFileDescriptor zzbww;
        private final long zzbwx;

        private File(@Nullable java.io.File file, ParcelFileDescriptor parcelFileDescriptor, long j) {
            this.zzbwv = file;
            this.zzbww = parcelFileDescriptor;
            this.zzbwx = j;
        }

        public static File zza(java.io.File file, long j) throws FileNotFoundException {
            return new File((java.io.File) zzbo.zzb((Object) file, (Object) "Cannot create Payload.File from null java.io.File."), ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY), j);
        }

        public static File zzb(ParcelFileDescriptor parcelFileDescriptor) {
            return new File(null, (ParcelFileDescriptor) zzbo.zzb((Object) parcelFileDescriptor, (Object) "Cannot create Payload.File from null ParcelFileDescriptor."), parcelFileDescriptor.getStatSize());
        }

        @Nullable
        public java.io.File asJavaFile() {
            return this.zzbwv;
        }

        @NonNull
        public ParcelFileDescriptor asParcelFileDescriptor() {
            return this.zzbww;
        }

        public long getSize() {
            return this.zzbwx;
        }
    }

    public static class Stream {
        @Nullable
        private final ParcelFileDescriptor zzbww;
        @Nullable
        private InputStream zzbwy;

        private Stream(@Nullable ParcelFileDescriptor parcelFileDescriptor, @Nullable InputStream inputStream) {
            this.zzbww = parcelFileDescriptor;
            this.zzbwy = inputStream;
        }

        public static Stream zzc(ParcelFileDescriptor parcelFileDescriptor) {
            zzbo.zzb((Object) parcelFileDescriptor, (Object) "Cannot create Payload.Stream from null ParcelFileDescriptor.");
            return new Stream(parcelFileDescriptor, null);
        }

        public static Stream zzi(InputStream inputStream) {
            zzbo.zzb((Object) inputStream, (Object) "Cannot create Payload.Stream from null InputStream.");
            return new Stream(null, inputStream);
        }

        @NonNull
        public InputStream asInputStream() {
            if (this.zzbwy == null) {
                this.zzbwy = new AutoCloseInputStream(this.zzbww);
            }
            return this.zzbwy;
        }

        @Nullable
        public ParcelFileDescriptor asParcelFileDescriptor() {
            return this.zzbww;
        }
    }

    public @interface Type {
        public static final int BYTES = 1;
        public static final int FILE = 2;
        public static final int STREAM = 3;
    }

    private Payload(long j, int i, @Nullable byte[] bArr, @Nullable File file, @Nullable Stream stream) {
        this.id = j;
        this.type = i;
        this.zzbws = bArr;
        this.zzbwt = file;
        this.zzbwu = stream;
    }

    public static Payload fromBytes(byte[] bArr) {
        zzbo.zzb((Object) bArr, (Object) "Cannot create a Payload from null bytes.");
        return zza(bArr, UUID.randomUUID().getLeastSignificantBits());
    }

    public static Payload fromFile(ParcelFileDescriptor parcelFileDescriptor) {
        return zza(File.zzb(parcelFileDescriptor), UUID.randomUUID().getLeastSignificantBits());
    }

    public static Payload fromFile(java.io.File file) throws FileNotFoundException {
        return zza(File.zza(file, file.length()), UUID.randomUUID().getLeastSignificantBits());
    }

    public static Payload fromStream(ParcelFileDescriptor parcelFileDescriptor) {
        return zza(Stream.zzc(parcelFileDescriptor), UUID.randomUUID().getLeastSignificantBits());
    }

    public static Payload fromStream(InputStream inputStream) {
        return zza(Stream.zzi(inputStream), UUID.randomUUID().getLeastSignificantBits());
    }

    public static Payload zza(File file, long j) {
        return new Payload(j, 2, null, file, null);
    }

    public static Payload zza(Stream stream, long j) {
        return new Payload(j, 3, null, null, stream);
    }

    public static Payload zza(byte[] bArr, long j) {
        return new Payload(j, 1, bArr, null, null);
    }

    @Nullable
    public byte[] asBytes() {
        return this.zzbws;
    }

    @Nullable
    public File asFile() {
        return this.zzbwt;
    }

    @Nullable
    public Stream asStream() {
        return this.zzbwu;
    }

    public long getId() {
        return this.id;
    }

    @Type
    public int getType() {
        return this.type;
    }
}
