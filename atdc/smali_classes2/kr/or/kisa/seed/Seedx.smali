.class public Lkr/or/kisa/seed/Seedx;
.super Ljava/lang/Object;
.source "Seedx.java"


# static fields
.field private static BIG:Ljava/lang/Boolean; = null

.field private static ENDIAN:Ljava/lang/Boolean; = null

.field private static KC:[I = null

.field private static LITTLE:Ljava/lang/Boolean; = null

.field private static NoRounds:I = 0x10

.field private static SS0:[I

.field private static SS1:[I

.field private static SS2:[I

.field private static SS3:[I


# instance fields
.field private final NoRoundKeys:I

.field private final SeedBlockLen:I

.field private final SeedBlockSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lkr/or/kisa/seed/Seedx;->LITTLE:Ljava/lang/Boolean;

    const/16 v1, 0x100

    .line 381
    new-array v2, v1, [I

    const v3, 0x2989a1a8

    aput v3, v2, v0

    const/4 v3, 0x1

    const v4, 0x5858184

    aput v4, v2, v3

    const/4 v4, 0x2

    const v5, 0x16c6d2d4

    aput v5, v2, v4

    const/4 v5, 0x3

    const v6, 0x13c3d3d0

    aput v6, v2, v5

    const/4 v6, 0x4

    const v7, 0x14445054

    aput v7, v2, v6

    const/4 v7, 0x5

    const v8, 0x1d0d111c

    aput v8, v2, v7

    const/4 v8, 0x6

    const v9, 0x2c8ca0ac

    aput v9, v2, v8

    const/4 v9, 0x7

    const v10, 0x25052124

    aput v10, v2, v9

    const/16 v10, 0x8

    const v11, 0x1d4d515c

    aput v11, v2, v10

    const/16 v11, 0x9

    const v12, 0x3434340

    aput v12, v2, v11

    const/16 v12, 0xa

    const v13, 0x18081018

    aput v13, v2, v12

    const/16 v13, 0xb

    const v14, 0x1e0e121c

    aput v14, v2, v13

    const/16 v14, 0xc

    const v15, 0x11415150

    aput v15, v2, v14

    const/16 v15, 0xd

    const v16, 0x3cccf0fc

    aput v16, v2, v15

    const/16 v15, 0xe

    const v16, 0xacac2c8

    aput v16, v2, v15

    const/16 v15, 0xf

    const v16, 0x23436360

    aput v16, v2, v15

    const/16 v15, 0x10

    const v16, 0x28082028

    aput v16, v2, v15

    const/16 v16, 0x11

    const v17, 0x4444044

    aput v17, v2, v16

    const/16 v16, 0x12

    const v17, 0x20002020

    aput v17, v2, v16

    const/16 v16, 0x13

    const v17, 0x1d8d919c

    aput v17, v2, v16

    const/16 v16, 0x14

    const v17, 0x20c0e0e0

    aput v17, v2, v16

    const/16 v16, 0x15

    const v17, 0x22c2e2e0

    aput v17, v2, v16

    const/16 v16, 0x16

    const v17, 0x8c8c0c8

    aput v17, v2, v16

    const/16 v16, 0x17

    const v17, 0x17071314

    aput v17, v2, v16

    const/16 v16, 0x18

    const v17, 0x2585a1a4

    aput v17, v2, v16

    const/16 v16, 0x19

    const v17, 0xf8f838c

    aput v17, v2, v16

    const/16 v16, 0x1a

    const v17, 0x3030300

    aput v17, v2, v16

    const/16 v16, 0x1b

    const v17, 0x3b4b7378

    aput v17, v2, v16

    const/16 v16, 0x1c

    const v17, 0x3b8bb3b8

    aput v17, v2, v16

    const/16 v16, 0x1d

    const v17, 0x13031310

    aput v17, v2, v16

    const/16 v16, 0x1e

    const v17, 0x12c2d2d0

    aput v17, v2, v16

    const/16 v16, 0x1f

    const v17, 0x2ecee2ec

    aput v17, v2, v16

    const/16 v16, 0x20

    const v17, 0x30407070    # 7.0008976E-10f

    aput v17, v2, v16

    const/16 v16, 0x21

    const v17, 0xc8c808c

    aput v17, v2, v16

    const/16 v16, 0x22

    const v17, 0x3f0f333c

    aput v17, v2, v16

    const/16 v16, 0x23

    const v17, 0x2888a0a8

    aput v17, v2, v16

    const/16 v16, 0x24

    const v17, 0x32023230

    aput v17, v2, v16

    const/16 v16, 0x25

    const v17, 0x1dcdd1dc

    aput v17, v2, v16

    const/16 v16, 0x26

    const v17, 0x36c6f2f4

    aput v17, v2, v16

    const/16 v16, 0x27

    const v17, 0x34447074

    aput v17, v2, v16

    const/16 v16, 0x28

    const v17, 0x2ccce0ec    # 5.823E-12f

    aput v17, v2, v16

    const/16 v16, 0x29

    const v17, 0x15859194

    aput v17, v2, v16

    const/16 v16, 0x2a

    const v17, 0xb0b0308

    aput v17, v2, v16

    const/16 v16, 0x2b

    const v17, 0x17475354

    aput v17, v2, v16

    const/16 v16, 0x2c

    const v17, 0x1c4c505c    # 6.76018E-22f

    aput v17, v2, v16

    const/16 v16, 0x2d

    const v17, 0x1b4b5358

    aput v17, v2, v16

    const/16 v16, 0x2e

    const v17, 0x3d8db1bc

    aput v17, v2, v16

    const/16 v16, 0x2f

    const v17, 0x1010100

    aput v17, v2, v16

    const/16 v16, 0x30

    const v17, 0x24042024

    aput v17, v2, v16

    const/16 v16, 0x31

    const v17, 0x1c0c101c

    aput v17, v2, v16

    const/16 v16, 0x32

    const v17, 0x33437370

    aput v17, v2, v16

    const/16 v16, 0x33

    const v17, 0x18889098

    aput v17, v2, v16

    const/16 v16, 0x34

    const v17, 0x10001010

    aput v17, v2, v16

    const/16 v16, 0x35

    const v17, 0xcccc0cc

    aput v17, v2, v16

    const/16 v16, 0x36

    const v17, 0x32c2f2f0

    aput v17, v2, v16

    const/16 v16, 0x37

    const v17, 0x19c9d1d8

    aput v17, v2, v16

    const/16 v16, 0x38

    const v17, 0x2c0c202c

    aput v17, v2, v16

    const/16 v16, 0x39

    const v17, 0x27c7e3e4

    aput v17, v2, v16

    const/16 v16, 0x3a

    const v17, 0x32427270

    aput v17, v2, v16

    const/16 v16, 0x3b

    const v17, 0x3838380

    aput v17, v2, v16

    const/16 v16, 0x3c

    const v17, 0x1b8b9398

    aput v17, v2, v16

    const/16 v16, 0x3d

    const v17, 0x11c1d1d0

    aput v17, v2, v16

    const/16 v16, 0x3e

    const v17, 0x6868284

    aput v17, v2, v16

    const/16 v16, 0x3f

    const v17, 0x9c9c1c8

    aput v17, v2, v16

    const/16 v16, 0x40

    const v17, 0x20406060

    aput v17, v2, v16

    const/16 v16, 0x41

    const v17, 0x10405050

    aput v17, v2, v16

    const/16 v16, 0x42

    const v17, 0x2383a3a0

    aput v17, v2, v16

    const/16 v16, 0x43

    const v17, 0x2bcbe3e8

    aput v17, v2, v16

    const/16 v16, 0x44

    const v17, 0xd0d010c

    aput v17, v2, v16

    const/16 v16, 0x45

    const v17, 0x3686b2b4

    aput v17, v2, v16

    const/16 v16, 0x46

    const v17, 0x1e8e929c

    aput v17, v2, v16

    const/16 v16, 0x47

    const v17, 0xf4f434c

    aput v17, v2, v16

    const/16 v16, 0x48

    const v17, 0x3787b3b4

    aput v17, v2, v16

    const/16 v16, 0x49

    const v17, 0x1a4a5258

    aput v17, v2, v16

    const/16 v16, 0x4a

    const v17, 0x6c6c2c4

    aput v17, v2, v16

    const/16 v16, 0x4b

    const v17, 0x38487078

    aput v17, v2, v16

    const/16 v16, 0x4c

    const v17, 0x2686a2a4

    aput v17, v2, v16

    const/16 v16, 0x4d

    const v17, 0x12021210

    aput v17, v2, v16

    const/16 v16, 0x4e

    const v17, 0x2f8fa3ac

    aput v17, v2, v16

    const/16 v16, 0x4f

    const v17, 0x15c5d1d4

    aput v17, v2, v16

    const/16 v16, 0x50

    const v17, 0x21416160

    aput v17, v2, v16

    const/16 v16, 0x51

    const v17, 0x3c3c3c0

    aput v17, v2, v16

    const/16 v16, 0x52

    const v17, 0x3484b0b4

    aput v17, v2, v16

    const/16 v16, 0x53

    const v17, 0x1414140

    aput v17, v2, v16

    const/16 v16, 0x54

    const v17, 0x12425250

    aput v17, v2, v16

    const/16 v16, 0x55

    const v17, 0x3d4d717c

    aput v17, v2, v16

    const/16 v16, 0x56

    const v17, 0xd8d818c

    aput v17, v2, v16

    const/16 v16, 0x57

    const v17, 0x8080008

    aput v17, v2, v16

    const/16 v16, 0x58

    const v17, 0x1f0f131c

    aput v17, v2, v16

    const/16 v16, 0x59

    const v17, 0x19899198

    aput v17, v2, v16

    const/16 v16, 0x5b

    const v17, 0x19091118

    aput v17, v2, v16

    const/16 v16, 0x5c

    const v17, 0x4040004

    aput v17, v2, v16

    const/16 v16, 0x5d

    const v17, 0x13435350

    aput v17, v2, v16

    const/16 v16, 0x5e

    const v17, 0x37c7f3f4

    aput v17, v2, v16

    const/16 v16, 0x5f

    const v17, 0x21c1e1e0

    aput v17, v2, v16

    const/16 v16, 0x60

    const v17, 0x3dcdf1fc

    aput v17, v2, v16

    const/16 v16, 0x61

    const v17, 0x36467274

    aput v17, v2, v16

    const/16 v16, 0x62

    const v17, 0x2f0f232c

    aput v17, v2, v16

    const/16 v16, 0x63

    const v17, 0x27072324

    aput v17, v2, v16

    const/16 v16, 0x64

    const v17, 0x3080b0b0

    aput v17, v2, v16

    const/16 v16, 0x65

    const v17, 0xb8b8388

    aput v17, v2, v16

    const/16 v16, 0x66

    const v17, 0xe0e020c

    aput v17, v2, v16

    const/16 v16, 0x67

    const v17, 0x2b8ba3a8

    aput v17, v2, v16

    const/16 v16, 0x68

    const v17, 0x2282a2a0

    aput v17, v2, v16

    const/16 v16, 0x69

    const v17, 0x2e4e626c

    aput v17, v2, v16

    const/16 v16, 0x6a

    const v17, 0x13839390

    aput v17, v2, v16

    const/16 v16, 0x6b

    const v17, 0xd4d414c

    aput v17, v2, v16

    const/16 v16, 0x6c

    const v17, 0x29496168

    aput v17, v2, v16

    const/16 v16, 0x6d

    const v17, 0x3c4c707c

    aput v17, v2, v16

    const/16 v16, 0x6e

    const v17, 0x9090108

    aput v17, v2, v16

    const/16 v16, 0x6f

    const v17, 0xa0a0208

    aput v17, v2, v16

    const/16 v16, 0x70

    const v17, 0x3f8fb3bc

    aput v17, v2, v16

    const/16 v16, 0x71

    const v17, 0x2fcfe3ec

    aput v17, v2, v16

    const/16 v16, 0x72

    const v17, 0x33c3f3f0

    aput v17, v2, v16

    const/16 v16, 0x73

    const v17, 0x5c5c1c4

    aput v17, v2, v16

    const/16 v16, 0x74

    const v17, 0x7878384

    aput v17, v2, v16

    const/16 v16, 0x75

    const v17, 0x14041014

    aput v17, v2, v16

    const/16 v16, 0x76

    const v17, 0x3ecef2fc

    aput v17, v2, v16

    const/16 v16, 0x77

    const v17, 0x24446064

    aput v17, v2, v16

    const/16 v16, 0x78

    const v17, 0x1eced2dc

    aput v17, v2, v16

    const/16 v16, 0x79

    const v17, 0x2e0e222c

    aput v17, v2, v16

    const/16 v16, 0x7a

    const v17, 0xb4b4348

    aput v17, v2, v16

    const/16 v16, 0x7b

    const v17, 0x1a0a1218

    aput v17, v2, v16

    const/16 v16, 0x7c

    const v17, 0x6060204

    aput v17, v2, v16

    const/16 v16, 0x7d

    const v17, 0x21012120

    aput v17, v2, v16

    const/16 v16, 0x7e

    const v17, 0x2b4b6368

    aput v17, v2, v16

    const/16 v16, 0x7f

    const v17, 0x26466264

    aput v17, v2, v16

    const/16 v16, 0x80

    const v17, 0x2020200

    aput v17, v2, v16

    const/16 v16, 0x81

    const v17, 0x35c5f1f4

    aput v17, v2, v16

    const/16 v16, 0x82

    const v17, 0x12829290

    aput v17, v2, v16

    const/16 v16, 0x83

    const v17, 0xa8a8288

    aput v17, v2, v16

    const/16 v16, 0x84

    const v17, 0xc0c000c

    aput v17, v2, v16

    const/16 v16, 0x85

    const v17, 0x3383b3b0

    aput v17, v2, v16

    const/16 v16, 0x86

    const v17, 0x3e4e727c

    aput v17, v2, v16

    const/16 v16, 0x87

    const v17, 0x10c0d0d0

    aput v17, v2, v16

    const/16 v16, 0x88

    const v17, 0x3a4a7278

    aput v17, v2, v16

    const/16 v16, 0x89

    const v17, 0x7474344

    aput v17, v2, v16

    const/16 v16, 0x8a

    const v17, 0x16869294

    aput v17, v2, v16

    const/16 v16, 0x8b

    const v17, 0x25c5e1e4

    aput v17, v2, v16

    const/16 v16, 0x8c

    const v17, 0x26062224

    aput v17, v2, v16

    const/16 v16, 0x8d

    const v17, 0x808080

    aput v17, v2, v16

    const/16 v16, 0x8e

    const v17, 0x2d8da1ac

    aput v17, v2, v16

    const/16 v16, 0x8f

    const v17, 0x1fcfd3dc

    aput v17, v2, v16

    const/16 v16, 0x90

    const v17, 0x2181a1a0

    aput v17, v2, v16

    const/16 v16, 0x91

    const v17, 0x30003030

    aput v17, v2, v16

    const/16 v16, 0x92

    const v17, 0x37073334

    aput v17, v2, v16

    const/16 v16, 0x93

    const v17, 0x2e8ea2ac

    aput v17, v2, v16

    const/16 v16, 0x94

    const v17, 0x36063234    # 1.9996778E-6f

    aput v17, v2, v16

    const/16 v16, 0x95

    const v17, 0x15051114

    aput v17, v2, v16

    const/16 v16, 0x96

    const v17, 0x22022220

    aput v17, v2, v16

    const/16 v16, 0x97

    const v17, 0x38083038

    aput v17, v2, v16

    const/16 v16, 0x98

    const v17, 0x34c4f0f4

    aput v17, v2, v16

    const/16 v16, 0x99

    const v17, 0x2787a3a4

    aput v17, v2, v16

    const/16 v16, 0x9a

    const v17, 0x5454144

    aput v17, v2, v16

    const/16 v16, 0x9b

    const v17, 0xc4c404c

    aput v17, v2, v16

    const/16 v16, 0x9c

    const v17, 0x1818180

    aput v17, v2, v16

    const/16 v16, 0x9d

    const v17, 0x29c9e1e8

    aput v17, v2, v16

    const/16 v16, 0x9e

    const v17, 0x4848084

    aput v17, v2, v16

    const/16 v16, 0x9f

    const v17, 0x17879394

    aput v17, v2, v16

    const/16 v16, 0xa0

    const v17, 0x35053134

    aput v17, v2, v16

    const/16 v16, 0xa1

    const v17, 0xbcbc3c8

    aput v17, v2, v16

    const/16 v16, 0xa2

    const v17, 0xecec2cc

    aput v17, v2, v16

    const/16 v16, 0xa3

    const v17, 0x3c0c303c

    aput v17, v2, v16

    const/16 v16, 0xa4

    const v17, 0x31417170

    aput v17, v2, v16

    const/16 v16, 0xa5

    const v17, 0x11011110

    aput v17, v2, v16

    const/16 v16, 0xa6

    const v17, 0x7c7c3c4

    aput v17, v2, v16

    const/16 v16, 0xa7

    const v17, 0x9898188

    aput v17, v2, v16

    const/16 v16, 0xa8

    const v17, 0x35457174

    aput v17, v2, v16

    const/16 v16, 0xa9

    const v17, 0x3bcbf3f8

    aput v17, v2, v16

    const/16 v16, 0xaa

    const v17, 0x1acad2d8

    aput v17, v2, v16

    const/16 v16, 0xab

    const v17, 0x38c8f0f8

    aput v17, v2, v16

    const/16 v16, 0xac

    const v17, 0x14849094

    aput v17, v2, v16

    const/16 v16, 0xad

    const v17, 0x19495158

    aput v17, v2, v16

    const/16 v16, 0xae

    const v17, 0x2828280

    aput v17, v2, v16

    const/16 v16, 0xaf

    const v17, 0x4c4c0c4

    aput v17, v2, v16

    const/16 v16, 0xb0

    const v17, 0x3fcff3fc

    aput v17, v2, v16

    const/16 v16, 0xb1

    const v17, 0x9494148

    aput v17, v2, v16

    const/16 v16, 0xb2

    const v17, 0x39093138

    aput v17, v2, v16

    const/16 v16, 0xb3

    const v17, 0x27476364

    aput v17, v2, v16

    const/16 v16, 0xb4

    const v17, 0xc0c0c0

    aput v17, v2, v16

    const/16 v16, 0xb5

    const v17, 0xfcfc3cc

    aput v17, v2, v16

    const/16 v16, 0xb6

    const v17, 0x17c7d3d4

    aput v17, v2, v16

    const/16 v16, 0xb7

    const v17, 0x3888b0b8

    aput v17, v2, v16

    const/16 v16, 0xb8

    const v17, 0xf0f030c

    aput v17, v2, v16

    const/16 v16, 0xb9

    const v17, 0xe8e828c

    aput v17, v2, v16

    const/16 v16, 0xba

    const v17, 0x2424240

    aput v17, v2, v16

    const/16 v16, 0xbb

    const v17, 0x23032320

    aput v17, v2, v16

    const/16 v16, 0xbc

    const v17, 0x11819190

    aput v17, v2, v16

    const/16 v16, 0xbd

    const v17, 0x2c4c606c

    aput v17, v2, v16

    const/16 v16, 0xbe

    const v17, 0x1bcbd3d8

    aput v17, v2, v16

    const/16 v16, 0xbf

    const v17, 0x2484a0a4

    aput v17, v2, v16

    const/16 v16, 0xc0

    const v17, 0x34043034

    aput v17, v2, v16

    const/16 v16, 0xc1

    const v17, 0x31c1f1f0

    aput v17, v2, v16

    const/16 v16, 0xc2

    const v17, 0x8484048

    aput v17, v2, v16

    const/16 v16, 0xc3

    const v17, 0x2c2c2c0

    aput v17, v2, v16

    const/16 v16, 0xc4

    const v17, 0x2f4f636c

    aput v17, v2, v16

    const/16 v16, 0xc5

    const v17, 0x3d0d313c

    aput v17, v2, v16

    const/16 v16, 0xc6

    const v17, 0x2d0d212c

    aput v17, v2, v16

    const/16 v16, 0xc7

    const v17, 0x404040

    aput v17, v2, v16

    const/16 v16, 0xc8

    const v17, 0x3e8eb2bc

    aput v17, v2, v16

    const/16 v16, 0xc9

    const v17, 0x3e0e323c

    aput v17, v2, v16

    const/16 v16, 0xca

    const v17, 0x3c8cb0bc

    aput v17, v2, v16

    const/16 v16, 0xcb

    const v17, 0x1c1c1c0

    aput v17, v2, v16

    const/16 v16, 0xcc

    const v17, 0x2a8aa2a8

    aput v17, v2, v16

    const/16 v16, 0xcd

    const v17, 0x3a8ab2b8

    aput v17, v2, v16

    const/16 v16, 0xce

    const v17, 0xe4e424c

    aput v17, v2, v16

    const/16 v16, 0xcf

    const v17, 0x15455154

    aput v17, v2, v16

    const/16 v16, 0xd0

    const v17, 0x3b0b3338

    aput v17, v2, v16

    const/16 v16, 0xd1

    const v17, 0x1cccd0dc

    aput v17, v2, v16

    const/16 v16, 0xd2

    const v17, 0x28486068

    aput v17, v2, v16

    const/16 v16, 0xd3

    const v17, 0x3f4f737c

    aput v17, v2, v16

    const/16 v16, 0xd4

    const v17, 0x1c8c909c

    aput v17, v2, v16

    const/16 v16, 0xd5

    const v17, 0x18c8d0d8

    aput v17, v2, v16

    const/16 v16, 0xd6

    const v17, 0xa4a4248

    aput v17, v2, v16

    const/16 v16, 0xd7

    const v17, 0x16465254

    aput v17, v2, v16

    const/16 v16, 0xd8

    const v17, 0x37477374

    aput v17, v2, v16

    const/16 v16, 0xd9

    const v17, 0x2080a0a0

    aput v17, v2, v16

    const/16 v16, 0xda

    const v17, 0x2dcde1ec

    aput v17, v2, v16

    const/16 v16, 0xdb

    const v17, 0x6464244

    aput v17, v2, v16

    const/16 v16, 0xdc

    const v17, 0x3585b1b4

    aput v17, v2, v16

    const/16 v16, 0xdd

    const v17, 0x2b0b2328

    aput v17, v2, v16

    const/16 v16, 0xde

    const v17, 0x25456164

    aput v17, v2, v16

    const/16 v16, 0xdf

    const v17, 0x3acaf2f8

    aput v17, v2, v16

    const/16 v16, 0xe0

    const v17, 0x23c3e3e0

    aput v17, v2, v16

    const/16 v16, 0xe1

    const v17, 0x3989b1b8

    aput v17, v2, v16

    const/16 v16, 0xe2

    const v17, 0x3181b1b0

    aput v17, v2, v16

    const/16 v16, 0xe3

    const v17, 0x1f8f939c

    aput v17, v2, v16

    const/16 v16, 0xe4

    const v17, 0x1e4e525c

    aput v17, v2, v16

    const/16 v16, 0xe5

    const v17, 0x39c9f1f8

    aput v17, v2, v16

    const/16 v16, 0xe6

    const v17, 0x26c6e2e4

    aput v17, v2, v16

    const/16 v16, 0xe7

    const v17, 0x3282b2b0

    aput v17, v2, v16

    const/16 v16, 0xe8

    const v17, 0x31013130    # 1.879993E-9f

    aput v17, v2, v16

    const/16 v16, 0xe9

    const v17, 0x2acae2e8

    aput v17, v2, v16

    const/16 v16, 0xea

    const v17, 0x2d4d616c

    aput v17, v2, v16

    const/16 v16, 0xeb

    const v17, 0x1f4f535c

    aput v17, v2, v16

    const/16 v16, 0xec

    const v17, 0x24c4e0e4

    aput v17, v2, v16

    const/16 v16, 0xed

    const v17, 0x30c0f0f0

    aput v17, v2, v16

    const/16 v16, 0xee

    const v17, 0xdcdc1cc

    aput v17, v2, v16

    const/16 v16, 0xef

    const v17, 0x8888088

    aput v17, v2, v16

    const/16 v16, 0xf0

    const v17, 0x16061214

    aput v17, v2, v16

    const/16 v16, 0xf1

    const v17, 0x3a0a3238

    aput v17, v2, v16

    const/16 v16, 0xf2

    const v17, 0x18485058

    aput v17, v2, v16

    const/16 v16, 0xf3

    const v17, 0x14c4d0d4

    aput v17, v2, v16

    const/16 v16, 0xf4

    const v17, 0x22426260

    aput v17, v2, v16

    const/16 v16, 0xf5

    const v17, 0x29092128

    aput v17, v2, v16

    const/16 v16, 0xf6

    const v17, 0x7070304

    aput v17, v2, v16

    const/16 v16, 0xf7

    const v17, 0x33033330

    aput v17, v2, v16

    const/16 v16, 0xf8

    const v17, 0x28c8e0e8

    aput v17, v2, v16

    const/16 v16, 0xf9

    const v17, 0x1b0b1318

    aput v17, v2, v16

    const/16 v16, 0xfa

    const v17, 0x5050104

    aput v17, v2, v16

    const/16 v16, 0xfb

    const v17, 0x39497178

    aput v17, v2, v16

    const/16 v16, 0xfc

    const v17, 0x10809090

    aput v17, v2, v16

    const/16 v16, 0xfd

    const v17, 0x2a4a6268

    aput v17, v2, v16

    const/16 v16, 0xfe

    const v17, 0x2a0a2228

    aput v17, v2, v16

    const/16 v16, 0xff

    const v17, 0x1a8a9298

    aput v17, v2, v16

    sput-object v2, Lkr/or/kisa/seed/Seedx;->SS0:[I

    .line 432
    new-array v2, v1, [I

    const v16, 0x38380830

    aput v16, v2, v0

    const v16, -0x17d73720

    aput v16, v2, v3

    const v16, 0x2c2d0d21

    aput v16, v2, v4

    const v16, -0x5bd9795e

    aput v16, v2, v5

    const v16, -0x33f0303d    # -3.769934E7f

    aput v16, v2, v6

    const v16, -0x23e1312e

    aput v16, v2, v7

    const v16, -0x4fcc7c4d

    aput v16, v2, v8

    const v16, -0x47c77750

    aput v16, v2, v9

    const v16, -0x53d0705d

    aput v16, v2, v10

    const v16, 0x60204060    # 4.618934E19f

    aput v16, v2, v11

    const v16, 0x54154551

    aput v16, v2, v12

    const v16, -0x3bf8383d

    aput v16, v2, v13

    const v16, 0x44044440

    aput v16, v2, v14

    const/16 v16, 0xd

    const v17, 0x6c2f4f63

    aput v17, v2, v16

    const/16 v16, 0xe

    const v17, 0x682b4b63

    aput v17, v2, v16

    const/16 v16, 0xf

    const v17, 0x581b4b53

    aput v17, v2, v16

    const v16, -0x3ffc3c3d

    aput v16, v2, v15

    const/16 v16, 0x11

    const v17, 0x60224262

    aput v17, v2, v16

    const/16 v16, 0x12

    const v17, 0x30330333

    aput v17, v2, v16

    const/16 v16, 0x13

    const v17, -0x4bca7a4f

    aput v17, v2, v16

    const/16 v16, 0x14

    const v17, 0x28290921

    aput v17, v2, v16

    const/16 v16, 0x15

    const v17, -0x5fdf7f60

    aput v17, v2, v16

    const/16 v16, 0x16

    const v17, -0x1fdd3d1e

    aput v17, v2, v16

    const/16 v16, 0x17

    const v17, -0x5bd8785d

    aput v17, v2, v16

    const/16 v16, 0x18

    const v17, -0x2fec3c2d

    aput v17, v2, v16

    const/16 v16, 0x19

    const v17, -0x6fee7e6f

    aput v17, v2, v16

    const/16 v16, 0x1a

    const v17, 0x10110111

    aput v17, v2, v16

    const/16 v16, 0x1b

    const v17, 0x4060602

    aput v17, v2, v16

    const/16 v16, 0x1c

    const v17, 0x1c1c0c10

    aput v17, v2, v16

    const/16 v16, 0x1d

    const v17, -0x43c37350

    aput v17, v2, v16

    const/16 v16, 0x1e

    const v17, 0x34360632

    aput v17, v2, v16

    const/16 v16, 0x1f

    const v17, 0x480b4b43

    aput v17, v2, v16

    const/16 v16, 0x20

    const v17, -0x13d0301d

    aput v17, v2, v16

    const/16 v16, 0x21

    const v17, -0x77f77780

    aput v17, v2, v16

    const/16 v16, 0x22

    const v17, 0x6c2c4c60

    aput v17, v2, v16

    const/16 v16, 0x23

    const v17, -0x57d77760

    aput v17, v2, v16

    const/16 v16, 0x24

    const v17, 0x14170713

    aput v17, v2, v16

    const/16 v16, 0x25

    const v17, -0x3bfb3b40

    aput v17, v2, v16

    const/16 v16, 0x26

    const v17, 0x14160612

    aput v17, v2, v16

    const/16 v16, 0x27

    const v17, -0xbcb3b10

    aput v17, v2, v16

    const/16 v16, 0x28

    const v17, -0x3ffd3d3e

    aput v17, v2, v16

    const/16 v16, 0x29

    const v17, 0x44054541

    aput v17, v2, v16

    const/16 v16, 0x2a

    const v17, -0x1fde3e1f

    aput v17, v2, v16

    const/16 v16, 0x2b

    const v17, -0x2be9392e

    aput v17, v2, v16

    const/16 v16, 0x2c

    const v17, 0x3c3f0f33

    aput v17, v2, v16

    const/16 v16, 0x2d

    const v17, 0x3c3d0d31

    aput v17, v2, v16

    const/16 v16, 0x2e

    const v17, -0x73f1717e

    aput v17, v2, v16

    const/16 v16, 0x2f

    const v17, -0x67e77770

    aput v17, v2, v16

    const/16 v16, 0x30

    const v17, 0x28280820

    aput v17, v2, v16

    const/16 v16, 0x31

    const v17, 0x4c0e4e42    # 3.7304584E7f

    aput v17, v2, v16

    const/16 v16, 0x32

    const v17, -0xbc9390e

    aput v17, v2, v16

    const/16 v16, 0x33

    const v17, 0x3c3e0e32    # 0.011600064f

    aput v17, v2, v16

    const/16 v16, 0x34

    const v17, -0x5bda7a5f

    aput v17, v2, v16

    const/16 v16, 0x35

    const v17, -0x7c6360f

    aput v17, v2, v16

    const/16 v16, 0x36

    const v17, 0xc0d0d01

    aput v17, v2, v16

    const/16 v16, 0x37

    const v17, -0x23e0302d

    aput v17, v2, v16

    const/16 v16, 0x38

    const v17, -0x27e73730

    aput v17, v2, v16

    const/16 v16, 0x39

    const v17, 0x282b0b23

    aput v17, v2, v16

    const/16 v16, 0x3a

    const v17, 0x64264662

    aput v17, v2, v16

    const/16 v16, 0x3b

    const v17, 0x783a4a72

    aput v17, v2, v16

    const/16 v16, 0x3c

    const v17, 0x24270723

    aput v17, v2, v16

    const/16 v16, 0x3d

    const v17, 0x2c2f0f23

    aput v17, v2, v16

    const/16 v16, 0x3e

    const v17, -0xfce3e0f

    aput v17, v2, v16

    const/16 v16, 0x3f

    const v17, 0x70324272

    aput v17, v2, v16

    const/16 v16, 0x40

    const v17, 0x40024242

    aput v17, v2, v16

    const/16 v16, 0x41

    const v17, -0x2beb3b30

    aput v17, v2, v16

    const/16 v16, 0x42

    const v17, 0x40014141

    aput v17, v2, v16

    const/16 v16, 0x43

    const v17, -0x3fff3f40

    aput v17, v2, v16

    const/16 v16, 0x44

    const v17, 0x70334373

    aput v17, v2, v16

    const/16 v16, 0x45

    const v17, 0x64274763    # 1.2343001E22f

    aput v17, v2, v16

    const/16 v16, 0x46

    const v17, -0x53d37360

    aput v17, v2, v16

    const/16 v16, 0x47

    const v17, -0x77f4747d

    aput v17, v2, v16

    const/16 v16, 0x48

    const v17, -0xbc8380d

    aput v17, v2, v16

    const/16 v16, 0x49

    const v17, -0x53d2725f

    aput v17, v2, v16

    const/16 v16, 0x4a

    const v17, -0x7fff7f80

    aput v17, v2, v16

    const/16 v16, 0x4b

    const v17, 0x1c1f0f13

    aput v17, v2, v16

    const/16 v16, 0x4c

    const v17, -0x37f5353e

    aput v17, v2, v16

    const/16 v16, 0x4d

    const v17, 0x2c2c0c20

    aput v17, v2, v16

    const/16 v16, 0x4e

    const v17, -0x57d5755e

    aput v17, v2, v16

    const/16 v16, 0x4f

    const v17, 0x34340430

    aput v17, v2, v16

    const/16 v16, 0x50

    const v17, -0x2fed3d2e

    aput v17, v2, v16

    const/16 v16, 0x51

    const v17, 0x80b0b03

    aput v17, v2, v16

    const/16 v16, 0x52

    const v17, -0x13d1311e

    aput v17, v2, v16

    const/16 v16, 0x53

    const v17, -0x17d6361f

    aput v17, v2, v16

    const/16 v16, 0x54

    const v17, 0x5c1d4d51

    aput v17, v2, v16

    const/16 v16, 0x55

    const v17, -0x6beb7b70

    aput v17, v2, v16

    const/16 v16, 0x56

    const v17, 0x18180810

    aput v17, v2, v16

    const/16 v16, 0x57

    const v17, -0x7c73710

    aput v17, v2, v16

    const/16 v16, 0x58

    const v17, 0x54174753

    aput v17, v2, v16

    const/16 v16, 0x59

    const v17, -0x53d1715e

    aput v17, v2, v16

    const/16 v16, 0x5a

    const v17, 0x8080800

    aput v17, v2, v16

    const/16 v16, 0x5b

    const v17, -0x3bfa3a3f

    aput v17, v2, v16

    const/16 v16, 0x5c

    const v17, 0x10130313

    aput v17, v2, v16

    const/16 v16, 0x5d

    const v17, -0x33f2323f    # -3.7172996E7f

    aput v17, v2, v16

    const/16 v16, 0x5e

    const v17, -0x7bf9797e

    aput v17, v2, v16

    const/16 v16, 0x5f

    const v17, -0x47c6764f

    aput v17, v2, v16

    const/16 v16, 0x60

    const v17, -0x3c0300d

    aput v17, v2, v16

    const/16 v16, 0x61

    const v17, 0x7c3d4d71

    aput v17, v2, v16

    const/16 v16, 0x62

    const v17, -0x3ffe3e3f    # -2.0274508f

    aput v17, v2, v16

    const/16 v16, 0x63

    const v17, 0x30310131

    aput v17, v2, v16

    const/16 v16, 0x64

    const v17, -0xbca3a0f

    aput v17, v2, v16

    const/16 v16, 0x65

    const v17, -0x77f5757e

    aput v17, v2, v16

    const/16 v16, 0x66

    const v17, 0x682a4a62

    aput v17, v2, v16

    const/16 v16, 0x67

    const v17, -0x4fce7e4f

    aput v17, v2, v16

    const/16 v16, 0x68

    const v17, -0x2fee3e2f

    aput v17, v2, v16

    const/16 v16, 0x69

    const v17, 0x20200020

    aput v17, v2, v16

    const/16 v16, 0x6a

    const v17, -0x2be8382d

    aput v17, v2, v16

    const/16 v16, 0x6b

    const v17, 0x20202

    aput v17, v2, v16

    const/16 v16, 0x6c

    const v17, 0x20220222

    aput v17, v2, v16

    const/16 v16, 0x6d

    const v17, 0x4040400

    aput v17, v2, v16

    const/16 v16, 0x6e

    const v17, 0x68284860

    aput v17, v2, v16

    const/16 v16, 0x6f

    const v17, 0x70314171

    aput v17, v2, v16

    const/16 v16, 0x70

    const v17, 0x4070703

    aput v17, v2, v16

    const/16 v16, 0x71

    const v17, -0x27e4342d

    aput v17, v2, v16

    const/16 v16, 0x72

    const v17, -0x63e2726f

    aput v17, v2, v16

    const/16 v16, 0x73

    const v17, -0x67e6766f

    aput v17, v2, v16

    const/16 v16, 0x74

    const v17, 0x60214161

    aput v17, v2, v16

    const/16 v16, 0x75

    const v17, -0x43c1714e

    aput v17, v2, v16

    const/16 v16, 0x76

    const v17, -0x1bd9391e

    aput v17, v2, v16

    const/16 v16, 0x77

    const v17, 0x58194951

    aput v17, v2, v16

    const/16 v16, 0x78

    const v17, -0x23e2322f

    aput v17, v2, v16

    const/16 v16, 0x79

    const v17, 0x50114151

    aput v17, v2, v16

    const/16 v16, 0x7a

    const v17, -0x6fef7f70

    aput v17, v2, v16

    const/16 v16, 0x7b

    const v17, -0x23e33330

    aput v17, v2, v16

    const/16 v16, 0x7c

    const v17, -0x67e5756e

    aput v17, v2, v16

    const/16 v16, 0x7d

    const v17, -0x5fdc7c5d

    aput v17, v2, v16

    const/16 v16, 0x7e

    const v17, -0x57d4745d

    aput v17, v2, v16

    const/16 v16, 0x7f

    const v17, -0x2fef3f30

    aput v17, v2, v16

    const/16 v16, 0x80

    const v17, -0x7ffe7e7f

    aput v17, v2, v16

    const/16 v16, 0x81

    const v17, 0xc0f0f03

    aput v17, v2, v16

    const/16 v16, 0x82

    const v17, 0x44074743

    aput v17, v2, v16

    const/16 v16, 0x83

    const v17, 0x181a0a12

    aput v17, v2, v16

    const/16 v16, 0x84

    const v17, -0x1fdc3c1d

    aput v17, v2, v16

    const/16 v16, 0x85

    const v17, -0x13d33320

    aput v17, v2, v16

    const/16 v16, 0x86

    const v17, -0x73f2727f

    aput v17, v2, v16

    const/16 v16, 0x87

    const v17, -0x43c0704d

    aput v17, v2, v16

    const/16 v16, 0x88

    const v17, -0x6be9796e

    aput v17, v2, v16

    const/16 v16, 0x89

    const v17, 0x783b4b73

    aput v17, v2, v16

    const/16 v16, 0x8a

    const v17, 0x5c1c4c50

    aput v17, v2, v16

    const/16 v16, 0x8b

    const v17, -0x5fdd7d5e

    aput v17, v2, v16

    const/16 v16, 0x8c

    const v17, -0x5fde7e5f

    aput v17, v2, v16

    const/16 v16, 0x8d

    const v17, 0x60234363

    aput v17, v2, v16

    const/16 v16, 0x8e

    const v17, 0x20230323

    aput v17, v2, v16

    const/16 v16, 0x8f

    const v17, 0x4c0d4d41    # 3.7041412E7f

    aput v17, v2, v16

    const/16 v16, 0x90

    const v17, -0x37f73740    # -140067.0f

    aput v17, v2, v16

    const/16 v16, 0x91

    const v17, -0x63e1716e

    aput v17, v2, v16

    const/16 v16, 0x92

    const v17, -0x63e37370

    aput v17, v2, v16

    const/16 v16, 0x93

    const v17, 0x383a0a32

    aput v17, v2, v16

    const/16 v16, 0x94

    const v17, 0xc0c0c00

    aput v17, v2, v16

    const/16 v16, 0x95

    const v17, 0x2c2e0e22

    aput v17, v2, v16

    const/16 v16, 0x96

    const v17, -0x47c5754e

    aput v17, v2, v16

    const/16 v16, 0x97

    const v17, 0x6c2e4e62

    aput v17, v2, v16

    const/16 v16, 0x98

    const v17, -0x63e0706d

    aput v17, v2, v16

    const/16 v16, 0x99

    const v17, 0x581a4a52

    aput v17, v2, v16

    const/16 v16, 0x9a

    const v17, -0xfcd3d0e

    aput v17, v2, v16

    const/16 v16, 0x9b

    const v17, -0x6fed7d6e

    aput v17, v2, v16

    const/16 v16, 0x9c

    const v17, -0xfcc3c0d

    aput v17, v2, v16

    const/16 v16, 0x9d

    const v17, 0x48094941

    aput v17, v2, v16

    const/16 v16, 0x9e

    const v17, 0x78384870

    aput v17, v2, v16

    const/16 v16, 0x9f

    const v17, -0x33f33340    # -3.6909824E7f

    aput v17, v2, v16

    const/16 v16, 0xa0

    const v17, 0x14150511

    aput v17, v2, v16

    const/16 v16, 0xa1

    const v17, -0x7c4340d

    aput v17, v2, v16

    const/16 v16, 0xa2

    const v17, 0x70304070

    aput v17, v2, v16

    const/16 v16, 0xa3

    const v17, 0x74354571

    aput v17, v2, v16

    const/16 v16, 0xa4

    const v17, 0x7c3f4f73

    aput v17, v2, v16

    const/16 v16, 0xa5

    const v17, 0x34350531

    aput v17, v2, v16

    const/16 v16, 0xa6

    const v17, 0x10100010

    aput v17, v2, v16

    const/16 v16, 0xa7

    const v17, 0x30303

    aput v17, v2, v16

    const/16 v16, 0xa8

    const v17, 0x64244460

    aput v17, v2, v16

    const/16 v16, 0xa9

    const v17, 0x6c2d4d61

    aput v17, v2, v16

    const/16 v16, 0xaa

    const v17, -0x3bf9393e

    aput v17, v2, v16

    const/16 v16, 0xab

    const v17, 0x74344470

    aput v17, v2, v16

    const/16 v16, 0xac

    const v17, -0x2bea3a2f

    aput v17, v2, v16

    const/16 v16, 0xad

    const v17, -0x4bcb7b50

    aput v17, v2, v16

    const/16 v16, 0xae

    const v17, -0x17d5351e

    aput v17, v2, v16

    const/16 v16, 0xaf

    const v17, 0x8090901

    aput v17, v2, v16

    const/16 v16, 0xb0

    const v17, 0x74364672

    aput v17, v2, v16

    const/16 v16, 0xb1

    const v17, 0x18190911

    aput v17, v2, v16

    const/16 v16, 0xb2

    const v17, -0x3c1310e

    aput v17, v2, v16

    const/16 v16, 0xb3

    const v17, 0x40004040

    aput v17, v2, v16

    const/16 v16, 0xb4

    const v17, 0x10120212

    aput v17, v2, v16

    const/16 v16, 0xb5

    const v17, -0x1fdf3f20

    aput v17, v2, v16

    const/16 v16, 0xb6

    const v17, -0x43c2724f

    aput v17, v2, v16

    const/16 v16, 0xb7

    const v17, 0x4050501

    aput v17, v2, v16

    const/16 v16, 0xb8

    const v17, -0x7c5350e

    aput v17, v2, v16

    const/16 v16, 0xb9

    const v17, 0x10101

    aput v17, v2, v16

    const/16 v16, 0xba

    const v17, -0xfcf3f10

    aput v17, v2, v16

    const/16 v16, 0xbb

    const v17, 0x282a0a22

    aput v17, v2, v16

    const/16 v16, 0xbc

    const v17, 0x5c1e4e52

    aput v17, v2, v16

    const/16 v16, 0xbd

    const v17, -0x57d6765f

    aput v17, v2, v16

    const/16 v16, 0xbe

    const v17, 0x54164652

    aput v17, v2, v16

    const/16 v16, 0xbf

    const v17, 0x40034343

    aput v17, v2, v16

    const/16 v16, 0xc0

    const v17, -0x7bfa7a7f

    aput v17, v2, v16

    const/16 v16, 0xc1

    const v17, 0x14140410

    aput v17, v2, v16

    const/16 v16, 0xc2

    const v17, -0x77f6767f

    aput v17, v2, v16

    const/16 v16, 0xc3

    const v17, -0x67e4746d

    aput v17, v2, v16

    const/16 v16, 0xc4

    const v17, -0x4fcf7f50

    aput v17, v2, v16

    const/16 v16, 0xc5

    const v17, -0x1bda3a1f

    aput v17, v2, v16

    const/16 v16, 0xc6

    const v17, 0x48084840    # 139553.0f

    aput v17, v2, v16

    const/16 v16, 0xc7

    const v17, 0x78394971

    aput v17, v2, v16

    const/16 v16, 0xc8

    const v17, -0x6be8786d

    aput v17, v2, v16

    const/16 v16, 0xc9

    const v17, -0x3c33310

    aput v17, v2, v16

    const/16 v16, 0xca

    const v17, 0x1c1e0e12    # 5.2296E-22f

    aput v17, v2, v16

    const/16 v16, 0xcb

    const v17, -0x7ffd7d7e

    aput v17, v2, v16

    const/16 v16, 0xcc

    const v17, 0x20210121

    aput v17, v2, v16

    const/16 v16, 0xcd

    const v17, -0x73f37380

    aput v17, v2, v16

    const/16 v16, 0xce

    const v17, 0x181b0b13

    aput v17, v2, v16

    const/16 v16, 0xcf

    const v17, 0x5c1f4f53

    aput v17, v2, v16

    const/16 v16, 0xd0

    const v17, 0x74374773

    aput v17, v2, v16

    const/16 v16, 0xd1

    const v17, 0x54144450

    aput v17, v2, v16

    const/16 v16, 0xd2

    const v17, -0x4fcd7d4e

    aput v17, v2, v16

    const/16 v16, 0xd3

    const v17, 0x1c1d0d11

    aput v17, v2, v16

    const/16 v16, 0xd4

    const v17, 0x24250521

    aput v17, v2, v16

    const/16 v16, 0xd5

    const v17, 0x4c0f4f43    # 3.7567756E7f

    aput v17, v2, v16

    const/16 v16, 0xd7

    const v17, 0x44064642

    aput v17, v2, v16

    const/16 v16, 0xd8

    const v17, -0x13d2321f

    aput v17, v2, v16

    const/16 v16, 0xd9

    const v17, 0x58184850

    aput v17, v2, v16

    const/16 v16, 0xda

    const v17, 0x50124252

    aput v17, v2, v16

    const/16 v16, 0xdb

    const v17, -0x17d4341d

    aput v17, v2, v16

    const/16 v16, 0xdc

    const v17, 0x7c3e4e72

    aput v17, v2, v16

    const/16 v16, 0xdd

    const v17, -0x27e5352e

    aput v17, v2, v16

    const/16 v16, 0xde

    const v17, -0x37f6363f

    aput v17, v2, v16

    const/16 v16, 0xdf

    const v17, -0x3c2320f

    aput v17, v2, v16

    const/16 v16, 0xe0

    const v17, 0x30300030

    aput v17, v2, v16

    const/16 v16, 0xe1

    const v17, -0x6bea7a6f

    aput v17, v2, v16

    const/16 v16, 0xe2

    const v17, 0x64254561

    aput v17, v2, v16

    const/16 v16, 0xe3

    const v17, 0x3c3c0c30

    aput v17, v2, v16

    const/16 v16, 0xe4

    const v17, -0x4bc9794e    # -1.6999073E-7f

    aput v17, v2, v16

    const/16 v16, 0xe5

    const v17, -0x1bdb3b20

    aput v17, v2, v16

    const/16 v16, 0xe6

    const v17, -0x47c4744d

    aput v17, v2, v16

    const/16 v16, 0xe7

    const v17, 0x7c3c4c70

    aput v17, v2, v16

    const/16 v16, 0xe8

    const v17, 0xc0e0e02

    aput v17, v2, v16

    const/16 v16, 0xe9

    const v17, 0x50104050

    aput v17, v2, v16

    const/16 v16, 0xea

    const v17, 0x38390931

    aput v17, v2, v16

    const/16 v16, 0xeb

    const v17, 0x24260622    # 3.6000707E-17f

    aput v17, v2, v16

    const/16 v16, 0xec

    const v17, 0x30320232

    aput v17, v2, v16

    const/16 v16, 0xed

    const v17, -0x7bfb7b80

    aput v17, v2, v16

    const/16 v16, 0xee

    const v17, 0x68294961

    aput v17, v2, v16

    const/16 v16, 0xef

    const v17, -0x6fec7c6d    # -2.9092E-29f

    aput v17, v2, v16

    const/16 v16, 0xf0

    const v17, 0x34370733

    aput v17, v2, v16

    const/16 v16, 0xf1

    const v17, -0x1bd8381d

    aput v17, v2, v16

    const/16 v16, 0xf2

    const v17, 0x24240420

    aput v17, v2, v16

    const/16 v16, 0xf3

    const v17, -0x5bdb7b60

    aput v17, v2, v16

    const/16 v16, 0xf4

    const v17, -0x37f4343d

    aput v17, v2, v16

    const/16 v16, 0xf5

    const v17, 0x50134353

    aput v17, v2, v16

    const/16 v16, 0xf6

    const v17, 0x80a0a02

    aput v17, v2, v16

    const/16 v16, 0xf7

    const v17, -0x7bf8787d

    aput v17, v2, v16

    const/16 v16, 0xf8

    const v17, -0x27e6362f

    aput v17, v2, v16

    const/16 v16, 0xf9

    const v17, 0x4c0c4c40    # 3.677824E7f

    aput v17, v2, v16

    const/16 v16, 0xfa

    const v17, -0x7ffc7c7d

    aput v17, v2, v16

    const/16 v16, 0xfb

    const v17, -0x73f0707d

    aput v17, v2, v16

    const/16 v16, 0xfc

    const v17, -0x33f1313e    # -3.7436168E7f

    aput v17, v2, v16

    const/16 v16, 0xfd

    const v17, 0x383b0b33

    aput v17, v2, v16

    const/16 v16, 0xfe

    const v17, 0x480a4a42

    aput v17, v2, v16

    const/16 v16, 0xff

    const v17, -0x4bc8784d

    aput v17, v2, v16

    sput-object v2, Lkr/or/kisa/seed/Seedx;->SS1:[I

    .line 484
    new-array v2, v1, [I

    const v16, -0x5e57d677

    aput v16, v2, v0

    const v16, -0x7e7bfa7b

    aput v16, v2, v3

    const v16, -0x2d2be93a

    aput v16, v2, v4

    const v16, -0x2c2fec3d

    aput v16, v2, v5

    const v16, 0x50541444

    aput v16, v2, v6

    const v16, 0x111c1d0d

    aput v16, v2, v7

    const v16, -0x5f53d374

    aput v16, v2, v8

    const v16, 0x21242505

    aput v16, v2, v9

    const v16, 0x515c1d4d

    aput v16, v2, v10

    const v16, 0x43400343

    aput v16, v2, v11

    const v16, 0x10181808    # 2.9995227E-29f

    aput v16, v2, v12

    const v16, 0x121c1e0e

    aput v16, v2, v13

    const v16, 0x51501141

    aput v16, v2, v14

    const/16 v16, 0xd

    const v17, -0xf03c334

    aput v17, v2, v16

    const/16 v16, 0xe

    const v17, -0x3d37f536    # -100.02107f

    aput v17, v2, v16

    const/16 v16, 0xf

    const v17, 0x63602343

    aput v17, v2, v16

    const v16, 0x20282808

    aput v16, v2, v15

    const/16 v16, 0x11

    const v17, 0x40440444

    aput v17, v2, v16

    const/16 v16, 0x12

    const v17, 0x20202000

    aput v17, v2, v16

    const/16 v16, 0x13

    const v17, -0x6e63e273

    aput v17, v2, v16

    const/16 v16, 0x14

    const v17, -0x1f1fdf40

    aput v17, v2, v16

    const/16 v16, 0x15

    const v17, -0x1d1fdd3e

    aput v17, v2, v16

    const/16 v16, 0x16

    const v17, -0x3f37f738

    aput v17, v2, v16

    const/16 v16, 0x17

    const v17, 0x13141707

    aput v17, v2, v16

    const/16 v16, 0x18

    const v17, -0x5e5bda7b

    aput v17, v2, v16

    const/16 v16, 0x19

    const v17, -0x7c73f071

    aput v17, v2, v16

    const/16 v16, 0x1a

    const v17, 0x3000303

    aput v17, v2, v16

    const/16 v16, 0x1b

    const v17, 0x73783b4b

    aput v17, v2, v16

    const/16 v16, 0x1c

    const v17, -0x4c47c475

    aput v17, v2, v16

    const/16 v16, 0x1d

    const v17, 0x13101303

    aput v17, v2, v16

    const/16 v16, 0x1e

    const v17, -0x2d2fed3e

    aput v17, v2, v16

    const/16 v16, 0x1f

    const v17, -0x1d13d132

    aput v17, v2, v16

    const/16 v16, 0x20

    const v17, 0x70703040

    aput v17, v2, v16

    const/16 v16, 0x21

    const v17, -0x7f73f374

    aput v17, v2, v16

    const/16 v16, 0x22

    const v17, 0x333c3f0f

    aput v17, v2, v16

    const/16 v16, 0x23

    const v17, -0x5f57d778

    aput v17, v2, v16

    const/16 v16, 0x24

    const v17, 0x32303202

    aput v17, v2, v16

    const/16 v16, 0x25

    const v17, -0x2e23e233

    aput v17, v2, v16

    const/16 v16, 0x26

    const v17, -0xd0bc93a

    aput v17, v2, v16

    const/16 v16, 0x27

    const v17, 0x70743444

    aput v17, v2, v16

    const/16 v16, 0x28

    const v17, -0x1f13d334

    aput v17, v2, v16

    const/16 v16, 0x29

    const v17, -0x6e6bea7b

    aput v17, v2, v16

    const/16 v16, 0x2a

    const v17, 0x3080b0b

    aput v17, v2, v16

    const/16 v16, 0x2b

    const v17, 0x53541747

    aput v17, v2, v16

    const/16 v16, 0x2c

    const v17, 0x505c1c4c

    aput v17, v2, v16

    const/16 v16, 0x2d

    const v17, 0x53581b4b

    aput v17, v2, v16

    const/16 v16, 0x2e

    const v17, -0x4e43c273

    aput v17, v2, v16

    const/16 v16, 0x2f

    const v17, 0x1000101

    aput v17, v2, v16

    const/16 v16, 0x30

    const v17, 0x20242404

    aput v17, v2, v16

    const/16 v16, 0x31

    const v17, 0x101c1c0c

    aput v17, v2, v16

    const/16 v16, 0x32

    const v17, 0x73703343

    aput v17, v2, v16

    const/16 v16, 0x33

    const v17, -0x6f67e778    # -5.9991225E-29f

    aput v17, v2, v16

    const/16 v16, 0x34

    const v17, 0x10101000

    aput v17, v2, v16

    const/16 v16, 0x35

    const v17, -0x3f33f334

    aput v17, v2, v16

    const/16 v16, 0x36

    const v17, -0xd0fcd3e

    aput v17, v2, v16

    const/16 v16, 0x37

    const v17, -0x2e27e637

    aput v17, v2, v16

    const/16 v16, 0x38

    const v17, 0x202c2c0c

    aput v17, v2, v16

    const/16 v16, 0x39

    const v17, -0x1c1bd839

    aput v17, v2, v16

    const/16 v16, 0x3a

    const v17, 0x72703242

    aput v17, v2, v16

    const/16 v16, 0x3b

    const v17, -0x7c7ffc7d

    aput v17, v2, v16

    const/16 v16, 0x3c

    const v17, -0x6c67e475

    aput v17, v2, v16

    const/16 v16, 0x3d

    const v17, -0x2e2fee3f

    aput v17, v2, v16

    const/16 v16, 0x3e

    const v17, -0x7d7bf97a

    aput v17, v2, v16

    const/16 v16, 0x3f

    const v17, -0x3e37f637

    aput v17, v2, v16

    const/16 v16, 0x40

    const v17, 0x60602040    # 6.4599915E19f

    aput v17, v2, v16

    const/16 v16, 0x41

    const v17, 0x50501040

    aput v17, v2, v16

    const/16 v16, 0x42

    const v17, -0x5c5fdc7d

    aput v17, v2, v16

    const/16 v16, 0x43

    const v17, -0x1c17d435

    aput v17, v2, v16

    const/16 v16, 0x44

    const v17, 0x10c0d0d

    aput v17, v2, v16

    const/16 v16, 0x45

    const v17, -0x4d4bc97a

    aput v17, v2, v16

    const/16 v16, 0x46

    const v17, -0x6d63e172

    aput v17, v2, v16

    const/16 v16, 0x47

    const v17, 0x434c0f4f

    aput v17, v2, v16

    const/16 v16, 0x48

    const v17, -0x4c4bc879

    aput v17, v2, v16

    const/16 v16, 0x49

    const v17, 0x52581a4a

    aput v17, v2, v16

    const/16 v16, 0x4a

    const v17, -0x3d3bf93a

    aput v17, v2, v16

    const/16 v16, 0x4b

    const v17, 0x70783848

    aput v17, v2, v16

    const/16 v16, 0x4c

    const v17, -0x5d5bd97a

    aput v17, v2, v16

    const/16 v16, 0x4d

    const v17, 0x12101202

    aput v17, v2, v16

    const/16 v16, 0x4e

    const v17, -0x5c53d071

    aput v17, v2, v16

    const/16 v16, 0x4f

    const v17, -0x2e2bea3b

    aput v17, v2, v16

    const/16 v16, 0x50

    const v17, 0x61602141

    aput v17, v2, v16

    const/16 v16, 0x51

    const v17, -0x3c3ffc3d

    aput v17, v2, v16

    const/16 v16, 0x52

    const v17, -0x4f4bcb7c

    aput v17, v2, v16

    const/16 v16, 0x53

    const v17, 0x41400141    # 12.000306f

    aput v17, v2, v16

    const/16 v16, 0x54

    const v17, 0x52501242

    aput v17, v2, v16

    const/16 v16, 0x55

    const v17, 0x717c3d4d

    aput v17, v2, v16

    const/16 v16, 0x56

    const v17, -0x7e73f273

    aput v17, v2, v16

    const/16 v16, 0x57

    const v17, 0x80808

    aput v17, v2, v16

    const/16 v16, 0x58

    const v17, 0x131c1f0f

    aput v17, v2, v16

    const/16 v16, 0x59

    const v17, -0x6e67e677

    aput v17, v2, v16

    const/16 v16, 0x5b

    const v17, 0x11181909

    aput v17, v2, v16

    const/16 v16, 0x5c

    const v17, 0x40404

    aput v17, v2, v16

    const/16 v16, 0x5d

    const v17, 0x53501343

    aput v17, v2, v16

    const/16 v16, 0x5e

    const v17, -0xc0bc839

    aput v17, v2, v16

    const/16 v16, 0x5f

    const v17, -0x1e1fde3f

    aput v17, v2, v16

    const/16 v16, 0x60

    const v17, -0xe03c233

    aput v17, v2, v16

    const/16 v16, 0x61

    const v17, 0x72743646

    aput v17, v2, v16

    const/16 v16, 0x62

    const v17, 0x232c2f0f

    aput v17, v2, v16

    const/16 v16, 0x63

    const v17, 0x23242707

    aput v17, v2, v16

    const/16 v16, 0x64

    const v17, -0x4f4fcf80

    aput v17, v2, v16

    const/16 v16, 0x65

    const v17, -0x7c77f475

    aput v17, v2, v16

    const/16 v16, 0x66

    const v17, 0x20c0e0e

    aput v17, v2, v16

    const/16 v16, 0x67

    const v17, -0x5c57d475

    aput v17, v2, v16

    const/16 v16, 0x68

    const v17, -0x5d5fdd7e

    aput v17, v2, v16

    const/16 v16, 0x69

    const v17, 0x626c2e4e

    aput v17, v2, v16

    const/16 v16, 0x6a

    const v17, -0x6c6fec7d

    aput v17, v2, v16

    const/16 v16, 0x6b

    const v17, 0x414c0d4d

    aput v17, v2, v16

    const/16 v16, 0x6c

    const v17, 0x61682949

    aput v17, v2, v16

    const/16 v16, 0x6d

    const v17, 0x707c3c4c

    aput v17, v2, v16

    const/16 v16, 0x6e

    const v17, 0x1080909

    aput v17, v2, v16

    const/16 v16, 0x6f

    const v17, 0x2080a0a

    aput v17, v2, v16

    const/16 v16, 0x70

    const v17, -0x4c43c071

    aput v17, v2, v16

    const/16 v16, 0x71

    const v17, -0x1c13d031

    aput v17, v2, v16

    const/16 v16, 0x72

    const v17, -0xc0fcc3d

    aput v17, v2, v16

    const/16 v16, 0x73

    const v17, -0x3e3bfa3b

    aput v17, v2, v16

    const/16 v16, 0x74

    const v17, -0x7c7bf879    # -7.759991E-37f

    aput v17, v2, v16

    const/16 v16, 0x75

    const v17, 0x10141404

    aput v17, v2, v16

    const/16 v16, 0x76

    const v17, -0xd03c132

    aput v17, v2, v16

    const/16 v16, 0x77

    const v17, 0x60642444

    aput v17, v2, v16

    const/16 v16, 0x78

    const v17, -0x2d23e132

    aput v17, v2, v16

    const/16 v16, 0x79

    const v17, 0x222c2e0e

    aput v17, v2, v16

    const/16 v16, 0x7a

    const v17, 0x43480b4b    # 200.04411f

    aput v17, v2, v16

    const/16 v16, 0x7b

    const v17, 0x12181a0a

    aput v17, v2, v16

    const/16 v16, 0x7c

    const v17, 0x2040606

    aput v17, v2, v16

    const/16 v16, 0x7d

    const v17, 0x21202101

    aput v17, v2, v16

    const/16 v16, 0x7e

    const v17, 0x63682b4b

    aput v17, v2, v16

    const/16 v16, 0x7f

    const v17, 0x62642646

    aput v17, v2, v16

    const/16 v16, 0x80

    const v17, 0x2000202

    aput v17, v2, v16

    const/16 v16, 0x81

    const v17, -0xe0bca3b

    aput v17, v2, v16

    const/16 v16, 0x82

    const v17, -0x6d6fed7e

    aput v17, v2, v16

    const/16 v16, 0x83

    const v17, -0x7d77f576

    aput v17, v2, v16

    const/16 v16, 0x84

    const v17, 0xc0c0c

    aput v17, v2, v16

    const/16 v16, 0x85

    const v17, -0x4c4fcc7d

    aput v17, v2, v16

    const/16 v16, 0x86

    const v17, 0x727c3e4e

    aput v17, v2, v16

    const/16 v16, 0x87

    const v17, -0x2f2fef40

    aput v17, v2, v16

    const/16 v16, 0x88

    const v17, 0x72783a4a

    aput v17, v2, v16

    const/16 v16, 0x89

    const v17, 0x43440747

    aput v17, v2, v16

    const/16 v16, 0x8a

    const v17, -0x6d6be97a

    aput v17, v2, v16

    const/16 v16, 0x8b

    const v17, -0x1e1bda3b

    aput v17, v2, v16

    const/16 v16, 0x8c

    const v17, 0x22242606

    aput v17, v2, v16

    const/16 v16, 0x8d

    const v17, -0x7f7fff80

    aput v17, v2, v16

    const/16 v16, 0x8e

    const v17, -0x5e53d273

    aput v17, v2, v16

    const/16 v16, 0x8f

    const v17, -0x2c23e031

    aput v17, v2, v16

    const/16 v16, 0x90

    const v17, -0x5e5fde7f

    aput v17, v2, v16

    const/16 v16, 0x91

    const v17, 0x30303000

    aput v17, v2, v16

    const/16 v16, 0x92

    const v17, 0x33343707

    aput v17, v2, v16

    const/16 v16, 0x93

    const v17, -0x5d53d172

    aput v17, v2, v16

    const/16 v16, 0x94

    const v17, 0x32343606

    aput v17, v2, v16

    const/16 v16, 0x95

    const v17, 0x11141505

    aput v17, v2, v16

    const/16 v16, 0x96

    const v17, 0x22202202

    aput v17, v2, v16

    const/16 v16, 0x97

    const v17, 0x30383808

    aput v17, v2, v16

    const/16 v16, 0x98

    const v17, -0xf0bcb3c

    aput v17, v2, v16

    const/16 v16, 0x99

    const v17, -0x5c5bd879

    aput v17, v2, v16

    const/16 v16, 0x9a

    const v17, 0x41440545

    aput v17, v2, v16

    const/16 v16, 0x9b

    const v17, 0x404c0c4c

    aput v17, v2, v16

    const/16 v16, 0x9c

    const v17, -0x7e7ffe7f

    aput v17, v2, v16

    const/16 v16, 0x9d

    const v17, -0x1e17d637

    aput v17, v2, v16

    const/16 v16, 0x9e

    const v17, -0x7f7bfb7c

    aput v17, v2, v16

    const/16 v16, 0x9f

    const v17, -0x6c6be879

    aput v17, v2, v16

    const/16 v16, 0xa0

    const v17, 0x31343505

    aput v17, v2, v16

    const/16 v16, 0xa1

    const v17, -0x3c37f435    # -400.09213f

    aput v17, v2, v16

    const/16 v16, 0xa2

    const v17, -0x3d33f132

    aput v17, v2, v16

    const/16 v16, 0xa3

    const v17, 0x303c3c0c

    aput v17, v2, v16

    const/16 v16, 0xa4

    const v17, 0x71703141

    aput v17, v2, v16

    const/16 v16, 0xa5

    const v17, 0x11101101

    aput v17, v2, v16

    const/16 v16, 0xa6

    const v17, -0x3c3bf839

    aput v17, v2, v16

    const/16 v16, 0xa7

    const v17, -0x7e77f677

    aput v17, v2, v16

    const/16 v16, 0xa8

    const v17, 0x71743545

    aput v17, v2, v16

    const/16 v16, 0xa9

    const v17, -0xc07c435

    aput v17, v2, v16

    const/16 v16, 0xaa

    const v17, -0x2d27e536

    aput v17, v2, v16

    const/16 v16, 0xab

    const v17, -0xf07c738

    aput v17, v2, v16

    const/16 v16, 0xac

    const v17, -0x6f6beb7c

    aput v17, v2, v16

    const/16 v16, 0xad

    const v17, 0x51581949

    aput v17, v2, v16

    const/16 v16, 0xae

    const v17, -0x7d7ffd7e

    aput v17, v2, v16

    const/16 v16, 0xaf

    const v17, -0x3f3bfb3c

    aput v17, v2, v16

    const/16 v16, 0xb0

    const v17, -0xc03c031

    aput v17, v2, v16

    const/16 v16, 0xb1

    const v17, 0x41480949

    aput v17, v2, v16

    const/16 v16, 0xb2

    const v17, 0x31383909

    aput v17, v2, v16

    const/16 v16, 0xb3

    const v17, 0x63642747

    aput v17, v2, v16

    const/16 v16, 0xb4

    const v17, -0x3f3fff40    # -6.0000916f

    aput v17, v2, v16

    const/16 v16, 0xb5

    const v17, -0x3c33f031

    aput v17, v2, v16

    const/16 v16, 0xb6

    const v17, -0x2c2be839

    aput v17, v2, v16

    const/16 v16, 0xb7

    const v17, -0x4f47c778

    aput v17, v2, v16

    const/16 v16, 0xb8

    const v17, 0x30c0f0f

    aput v17, v2, v16

    const/16 v16, 0xb9

    const v17, -0x7d73f172

    aput v17, v2, v16

    const/16 v16, 0xba

    const v17, 0x42400242

    aput v17, v2, v16

    const/16 v16, 0xbb

    const v17, 0x23202303

    aput v17, v2, v16

    const/16 v16, 0xbc

    const v17, -0x6e6fee7f

    aput v17, v2, v16

    const/16 v16, 0xbd

    const v17, 0x606c2c4c

    aput v17, v2, v16

    const/16 v16, 0xbe

    const v17, -0x2c27e435

    aput v17, v2, v16

    const/16 v16, 0xbf

    const v17, -0x5f5bdb7c

    aput v17, v2, v16

    const/16 v16, 0xc0

    const v17, 0x30343404

    aput v17, v2, v16

    const/16 v16, 0xc1

    const v17, -0xe0fce3f

    aput v17, v2, v16

    const/16 v16, 0xc2

    const v17, 0x40480848

    aput v17, v2, v16

    const/16 v16, 0xc3

    const v17, -0x3d3ffd3e

    aput v17, v2, v16

    const/16 v16, 0xc4

    const v17, 0x636c2f4f

    aput v17, v2, v16

    const/16 v16, 0xc5

    const v17, 0x313c3d0d

    aput v17, v2, v16

    const/16 v16, 0xc6

    const v17, 0x212c2d0d

    aput v17, v2, v16

    const/16 v16, 0xc7

    const v17, 0x40400040    # 3.0000153f

    aput v17, v2, v16

    const/16 v16, 0xc8

    const v17, -0x4d43c172

    aput v17, v2, v16

    const/16 v16, 0xc9

    const v17, 0x323c3e0e

    aput v17, v2, v16

    const/16 v16, 0xca

    const v17, -0x4f43c374

    aput v17, v2, v16

    const/16 v16, 0xcb

    const v17, -0x3e3ffe3f    # -24.000856f

    aput v17, v2, v16

    const/16 v16, 0xcc

    const v17, -0x5d57d576

    aput v17, v2, v16

    const/16 v16, 0xcd

    const v17, -0x4d47c576

    aput v17, v2, v16

    const/16 v16, 0xce

    const v17, 0x424c0e4e

    aput v17, v2, v16

    const/16 v16, 0xcf

    const v17, 0x51541545

    aput v17, v2, v16

    const/16 v16, 0xd0

    const v17, 0x33383b0b

    aput v17, v2, v16

    const/16 v16, 0xd1

    const v17, -0x2f23e334

    aput v17, v2, v16

    const/16 v16, 0xd2

    const v17, 0x60682848    # 6.69148E19f

    aput v17, v2, v16

    const/16 v16, 0xd3

    const v17, 0x737c3f4f

    aput v17, v2, v16

    const/16 v16, 0xd4

    const v17, -0x6f63e374

    aput v17, v2, v16

    const/16 v16, 0xd5

    const v17, -0x2f27e738

    aput v17, v2, v16

    const/16 v16, 0xd6

    const v17, 0x42480a4a

    aput v17, v2, v16

    const/16 v16, 0xd7

    const v17, 0x52541646

    aput v17, v2, v16

    const/16 v16, 0xd8

    const v17, 0x73743747

    aput v17, v2, v16

    const/16 v16, 0xd9

    const v17, -0x5f5fdf80

    aput v17, v2, v16

    const/16 v16, 0xda

    const v17, -0x1e13d233

    aput v17, v2, v16

    const/16 v16, 0xdb

    const v17, 0x42440646

    aput v17, v2, v16

    const/16 v16, 0xdc

    const v17, -0x4e4bca7b

    aput v17, v2, v16

    const/16 v16, 0xdd

    const v17, 0x23282b0b

    aput v17, v2, v16

    const/16 v16, 0xde

    const v17, 0x61642545

    aput v17, v2, v16

    const/16 v16, 0xdf

    const v17, -0xd07c536

    aput v17, v2, v16

    const/16 v16, 0xe0

    const v17, -0x1c1fdc3d

    aput v17, v2, v16

    const/16 v16, 0xe1

    const v17, -0x4e47c677

    aput v17, v2, v16

    const/16 v16, 0xe2

    const v17, -0x4e4fce7f

    aput v17, v2, v16

    const/16 v16, 0xe3

    const v17, -0x6c63e071

    aput v17, v2, v16

    const/16 v16, 0xe4

    const v17, 0x525c1e4e

    aput v17, v2, v16

    const/16 v16, 0xe5

    const v17, -0xe07c637

    aput v17, v2, v16

    const/16 v16, 0xe6

    const v17, -0x1d1bd93a

    aput v17, v2, v16

    const/16 v16, 0xe7

    const v17, -0x4d4fcd7e

    aput v17, v2, v16

    const/16 v16, 0xe8

    const v17, 0x31303101

    aput v17, v2, v16

    const/16 v16, 0xe9

    const v17, -0x1d17d536

    aput v17, v2, v16

    const/16 v16, 0xea

    const v17, 0x616c2d4d

    aput v17, v2, v16

    const/16 v16, 0xeb

    const v17, 0x535c1f4f

    aput v17, v2, v16

    const/16 v16, 0xec

    const v17, -0x1f1bdb3c

    aput v17, v2, v16

    const/16 v16, 0xed

    const v17, -0xf0fcf40    # -5.946827E29f

    aput v17, v2, v16

    const/16 v16, 0xee

    const v17, -0x3e33f233

    aput v17, v2, v16

    const/16 v16, 0xef

    const v17, -0x7f77f778

    aput v17, v2, v16

    const/16 v16, 0xf0

    const v17, 0x12141606

    aput v17, v2, v16

    const/16 v16, 0xf1

    const v17, 0x32383a0a

    aput v17, v2, v16

    const/16 v16, 0xf2

    const v17, 0x50581848

    aput v17, v2, v16

    const/16 v16, 0xf3

    const v17, -0x2f2beb3c

    aput v17, v2, v16

    const/16 v16, 0xf4

    const v17, 0x62602242

    aput v17, v2, v16

    const/16 v16, 0xf5

    const v17, 0x21282909

    aput v17, v2, v16

    const/16 v16, 0xf6

    const v17, 0x3040707

    aput v17, v2, v16

    const/16 v16, 0xf7

    const v17, 0x33303303

    aput v17, v2, v16

    const/16 v16, 0xf8

    const v17, -0x1f17d738

    aput v17, v2, v16

    const/16 v16, 0xf9

    const v17, 0x13181b0b

    aput v17, v2, v16

    const/16 v16, 0xfa

    const v17, 0x1040505

    aput v17, v2, v16

    const/16 v16, 0xfb

    const v17, 0x71783949

    aput v17, v2, v16

    const/16 v16, 0xfc

    const v17, -0x6f6fef80

    aput v17, v2, v16

    const/16 v16, 0xfd

    const v17, 0x62682a4a

    aput v17, v2, v16

    const/16 v16, 0xfe

    const v17, 0x22282a0a

    aput v17, v2, v16

    const/16 v16, 0xff

    const v17, -0x6d67e576

    aput v17, v2, v16

    sput-object v2, Lkr/or/kisa/seed/Seedx;->SS2:[I

    .line 536
    new-array v1, v1, [I

    const v2, 0x8303838

    aput v2, v1, v0

    const v0, -0x371f17d8

    aput v0, v1, v3

    const v0, 0xd212c2d

    aput v0, v1, v4

    const v0, -0x795d5bda

    aput v0, v1, v5

    const v0, -0x303c33f1

    aput v0, v1, v6

    const v0, -0x312d23e2

    aput v0, v1, v7

    const v0, -0x7c4c4fcd

    aput v0, v1, v8

    const v0, -0x774f47c8

    aput v0, v1, v9

    const v0, -0x705c53d1

    aput v0, v1, v10

    const v0, 0x40606020

    aput v0, v1, v11

    const v0, 0x45515415

    aput v0, v1, v12

    const v0, -0x383c3bf9

    aput v0, v1, v13

    const v0, 0x44404404

    aput v0, v1, v14

    const/16 v0, 0xd

    const v2, 0x4f636c2f

    aput v2, v1, v0

    const/16 v0, 0xe

    const v2, 0x4b63682b    # 1.4903339E7f

    aput v2, v1, v0

    const/16 v0, 0xf

    const v2, 0x4b53581b    # 1.3850651E7f

    aput v2, v1, v0

    const v0, -0x3c3c3ffd    # -391.5001f

    aput v0, v1, v15

    const/16 v0, 0x11

    const v2, 0x42626022

    aput v2, v1, v0

    const/16 v0, 0x12

    const v2, 0x3333033

    aput v2, v1, v0

    const/16 v0, 0x13

    const v2, -0x7a4e4bcb

    aput v2, v1, v0

    const/16 v0, 0x14

    const v2, 0x9212829

    aput v2, v1, v0

    const/16 v0, 0x15

    const v2, -0x7f5f5fe0

    aput v2, v1, v0

    const/16 v0, 0x16

    const v2, -0x3d1d1fde

    aput v2, v1, v0

    const/16 v0, 0x17

    const v2, -0x785c5bd9

    aput v2, v1, v0

    const/16 v0, 0x18

    const v2, -0x3c2c2fed

    aput v2, v1, v0

    const/16 v0, 0x19

    const v2, -0x7e6e6fef

    aput v2, v1, v0

    const/16 v0, 0x1a

    const v2, 0x1111011

    aput v2, v1, v0

    const/16 v0, 0x1b

    const v2, 0x6020406

    aput v2, v1, v0

    const/16 v0, 0x1c

    const v2, 0xc101c1c

    aput v2, v1, v0

    const/16 v0, 0x1d

    const v2, -0x734f43c4

    aput v2, v1, v0

    const/16 v0, 0x1e

    const v2, 0x6323436

    aput v2, v1, v0

    const/16 v0, 0x1f

    const v2, 0x4b43480b    # 1.2797963E7f

    aput v2, v1, v0

    const/16 v0, 0x20

    const v2, -0x301c13d1

    aput v2, v1, v0

    const/16 v0, 0x21

    const v2, -0x777f77f8

    aput v2, v1, v0

    const/16 v0, 0x22

    const v2, 0x4c606c2c    # 5.8831024E7f

    aput v2, v1, v0

    const/16 v0, 0x23

    const v2, -0x775f57d8

    aput v2, v1, v0

    const/16 v0, 0x24

    const v2, 0x7131417

    aput v2, v1, v0

    const/16 v0, 0x25

    const v2, -0x3b3f3bfc

    aput v2, v1, v0

    const/16 v0, 0x26

    const v2, 0x6121416

    aput v2, v1, v0

    const/16 v0, 0x27

    const v2, -0x3b0f0bcc

    aput v2, v1, v0

    const/16 v0, 0x28

    const v2, -0x3d3d3ffe

    aput v2, v1, v0

    const/16 v0, 0x29

    const v2, 0x45414405

    aput v2, v1, v0

    const/16 v0, 0x2a

    const v2, -0x3e1e1fdf

    aput v2, v1, v0

    const/16 v0, 0x2b

    const v2, -0x392d2bea

    aput v2, v1, v0

    const/16 v0, 0x2c

    const v2, 0xf333c3f

    aput v2, v1, v0

    const/16 v0, 0x2d

    const v2, 0xd313c3d

    aput v2, v1, v0

    const/16 v0, 0x2e

    const v2, -0x717d73f2

    aput v2, v1, v0

    const/16 v0, 0x2f

    const v2, -0x776f67e8

    aput v2, v1, v0

    const/16 v0, 0x30

    const v2, 0x8202828

    aput v2, v1, v0

    const/16 v0, 0x31

    const v2, 0x4e424c0e    # 8.1494106E8f

    aput v2, v1, v0

    const/16 v0, 0x32

    const v2, -0x390d0bca

    aput v2, v1, v0

    const/16 v0, 0x33

    const v2, 0xe323c3e

    aput v2, v1, v0

    const/16 v0, 0x34

    const v2, -0x7a5e5bdb

    aput v2, v1, v0

    const/16 v0, 0x35

    const v2, -0x360e07c7

    aput v2, v1, v0

    const/16 v0, 0x36

    const v2, 0xd010c0d

    aput v2, v1, v0

    const/16 v0, 0x37

    const v2, -0x302c23e1

    aput v2, v1, v0

    const/16 v0, 0x38

    const v2, -0x372f27e8    # -427712.75f

    aput v2, v1, v0

    const/16 v0, 0x39

    const v2, 0xb23282b

    aput v2, v1, v0

    const/16 v0, 0x3a

    const v2, 0x46626426

    aput v2, v1, v0

    const/16 v0, 0x3b

    const v2, 0x4a72783a    # 3972622.5f

    aput v2, v1, v0

    const/16 v0, 0x3c

    const v2, 0x7232427

    aput v2, v1, v0

    const/16 v0, 0x3d

    const v2, 0xf232c2f

    aput v2, v1, v0

    const/16 v0, 0x3e

    const v2, -0x3e0e0fcf

    aput v2, v1, v0

    const/16 v0, 0x3f

    const v2, 0x42727032

    aput v2, v1, v0

    const/16 v0, 0x40

    const v2, 0x42424002

    aput v2, v1, v0

    const/16 v0, 0x41

    const v2, -0x3b2f2bec

    aput v2, v1, v0

    const/16 v0, 0x42

    const v2, 0x41414001

    aput v2, v1, v0

    const/16 v0, 0x43

    const v2, -0x3f3f4000    # -6.0234375f

    aput v2, v1, v0

    const/16 v0, 0x44

    const v2, 0x43737033

    aput v2, v1, v0

    const/16 v0, 0x45

    const v2, 0x47636427

    aput v2, v1, v0

    const/16 v0, 0x46

    const v2, -0x735f53d4

    aput v2, v1, v0

    const/16 v0, 0x47

    const v2, -0x747c77f5

    aput v2, v1, v0

    const/16 v0, 0x48

    const v2, -0x380c0bc9

    aput v2, v1, v0

    const/16 v0, 0x49

    const v2, -0x725e53d3

    aput v2, v1, v0

    const/16 v0, 0x4a

    const v2, -0x7f7f8000

    aput v2, v1, v0

    const/16 v0, 0x4b

    const v2, 0xf131c1f

    aput v2, v1, v0

    const/16 v0, 0x4c

    const v2, -0x353d37f6    # -6382597.0f

    aput v2, v1, v0

    const/16 v0, 0x4d

    const v2, 0xc202c2c

    aput v2, v1, v0

    const/16 v0, 0x4e

    const v2, -0x755d57d6

    aput v2, v1, v0

    const/16 v0, 0x4f

    const v2, 0x4303434

    aput v2, v1, v0

    const/16 v0, 0x50

    const v2, -0x3d2d2fee

    aput v2, v1, v0

    const/16 v0, 0x51

    const v2, 0xb03080b

    aput v2, v1, v0

    const/16 v0, 0x52

    const v2, -0x311d13d2

    aput v2, v1, v0

    const/16 v0, 0x53

    const v2, -0x361e17d7

    aput v2, v1, v0

    const/16 v0, 0x54

    const v2, 0x4d515c1d    # 2.1952968E8f

    aput v2, v1, v0

    const/16 v0, 0x55

    const v2, -0x7b6f6bec

    aput v2, v1, v0

    const/16 v0, 0x56

    const v2, 0x8101818

    aput v2, v1, v0

    const/16 v0, 0x57

    const v2, -0x370f07c8    # -493505.75f

    aput v2, v1, v0

    const/16 v0, 0x58

    const v2, 0x47535417    # 54100.09f

    aput v2, v1, v0

    const/16 v0, 0x59

    const v2, -0x715d53d2

    aput v2, v1, v0

    const/16 v0, 0x5a

    const v2, 0x8000808

    aput v2, v1, v0

    const/16 v0, 0x5b

    const v2, -0x3a3e3bfb

    aput v2, v1, v0

    const/16 v0, 0x5c

    const v2, 0x3131013

    aput v2, v1, v0

    const/16 v0, 0x5d

    const v2, -0x323e33f3    # -4.0642192E8f

    aput v2, v1, v0

    const/16 v0, 0x5e

    const v2, -0x797d7bfa

    aput v2, v1, v0

    const/16 v0, 0x5f

    const v2, -0x764e47c7

    aput v2, v1, v0

    const/16 v0, 0x60

    const v2, -0x300c03c1

    aput v2, v1, v0

    const/16 v0, 0x61

    const v2, 0x4d717c3d    # 2.53215696E8f

    aput v2, v1, v0

    const/16 v0, 0x62

    const v2, -0x3e3e3fff

    aput v2, v1, v0

    const/16 v0, 0x63

    const v2, 0x1313031

    aput v2, v1, v0

    const/16 v0, 0x64

    const v2, -0x3a0e0bcb

    aput v2, v1, v0

    const/16 v0, 0x65

    const v2, -0x757d77f6

    aput v2, v1, v0

    const/16 v0, 0x66

    const v2, 0x4a62682a    # 3709450.5f

    aput v2, v1, v0

    const/16 v0, 0x67

    const v2, -0x7e4e4fcf

    aput v2, v1, v0

    const/16 v0, 0x68

    const v2, -0x3e2e2fef

    aput v2, v1, v0

    const/16 v0, 0x69

    const v2, 0x202020

    aput v2, v1, v0

    const/16 v0, 0x6a

    const v2, -0x382c2be9

    aput v2, v1, v0

    const/16 v0, 0x6b

    const v2, 0x2020002

    aput v2, v1, v0

    const/16 v0, 0x6c

    const v2, 0x2222022

    aput v2, v1, v0

    const/16 v0, 0x6d

    const v2, 0x4000404

    aput v2, v1, v0

    const/16 v0, 0x6e

    const v2, 0x48606828    # 229792.62f

    aput v2, v1, v0

    const/16 v0, 0x6f

    const v2, 0x41717031

    aput v2, v1, v0

    const/16 v0, 0x70

    const v2, 0x7030407

    aput v2, v1, v0

    const/16 v0, 0x71

    const v2, -0x342c27e5    # -2.7766838E7f

    aput v2, v1, v0

    const/16 v0, 0x72

    const v2, -0x726e63e3

    aput v2, v1, v0

    const/16 v0, 0x73

    const v2, -0x766e67e7

    aput v2, v1, v0

    const/16 v0, 0x74

    const v2, 0x41616021

    aput v2, v1, v0

    const/16 v0, 0x75

    const v2, -0x714d43c2

    aput v2, v1, v0

    const/16 v0, 0x76

    const v2, -0x391d1bda

    aput v2, v1, v0

    const/16 v0, 0x77

    const v2, 0x49515819

    aput v2, v1, v0

    const/16 v0, 0x78

    const v2, -0x322e23e3

    aput v2, v1, v0

    const/16 v0, 0x79

    const v2, 0x41515011

    aput v2, v1, v0

    const/16 v0, 0x7a

    const v2, -0x7f6f6ff0

    aput v2, v1, v0

    const/16 v0, 0x7b

    const v2, -0x332f23e4

    aput v2, v1, v0

    const/16 v0, 0x7c

    const v2, -0x756d67e6

    aput v2, v1, v0

    const/16 v0, 0x7d

    const v2, -0x7c5c5fdd

    aput v2, v1, v0

    const/16 v0, 0x7e

    const v2, -0x745c57d5

    aput v2, v1, v0

    const/16 v0, 0x7f

    const v2, -0x3f2f2ff0

    aput v2, v1, v0

    const/16 v0, 0x80

    const v2, -0x7e7e7fff

    aput v2, v1, v0

    const/16 v0, 0x81

    const v2, 0xf030c0f

    aput v2, v1, v0

    const/16 v0, 0x82

    const v2, 0x47434407

    aput v2, v1, v0

    const/16 v0, 0x83

    const v2, 0xa12181a

    aput v2, v1, v0

    const/16 v0, 0x84

    const v2, -0x3c1c1fdd

    aput v2, v1, v0

    const/16 v0, 0x85

    const v2, -0x331f13d4

    aput v2, v1, v0

    const/16 v0, 0x86

    const v2, -0x727e73f3

    aput v2, v1, v0

    const/16 v0, 0x87

    const v2, -0x704c43c1

    aput v2, v1, v0

    const/16 v0, 0x88

    const v2, -0x796d6bea

    aput v2, v1, v0

    const/16 v0, 0x89

    const v2, 0x4b73783b    # 1.5956027E7f

    aput v2, v1, v0

    const/16 v0, 0x8a

    const v2, 0x4c505c1c    # 5.4620272E7f

    aput v2, v1, v0

    const/16 v0, 0x8b

    const v2, -0x7d5d5fde

    aput v2, v1, v0

    const/16 v0, 0x8c

    const v2, -0x7e5e5fdf

    aput v2, v1, v0

    const/16 v0, 0x8d

    const v2, 0x43636023

    aput v2, v1, v0

    const/16 v0, 0x8e

    const v2, 0x3232023

    aput v2, v1, v0

    const/16 v0, 0x8f

    const v2, 0x4d414c0d    # 2.02686672E8f

    aput v2, v1, v0

    const/16 v0, 0x90

    const v2, -0x373f37f8    # -394816.25f

    aput v2, v1, v0

    const/16 v0, 0x91

    const v2, -0x716d63e2

    aput v2, v1, v0

    const/16 v0, 0x92

    const v2, -0x736f63e4

    aput v2, v1, v0

    const/16 v0, 0x93

    const v2, 0xa32383a

    aput v2, v1, v0

    const/16 v0, 0x94

    const v2, 0xc000c0c

    aput v2, v1, v0

    const/16 v0, 0x95

    const v2, 0xe222c2e

    aput v2, v1, v0

    const/16 v0, 0x96

    const v2, -0x754d47c6

    aput v2, v1, v0

    const/16 v0, 0x97

    const v2, 0x4e626c2e    # 9.4968512E8f

    aput v2, v1, v0

    const/16 v0, 0x98

    const v2, -0x706c63e1

    aput v2, v1, v0

    const/16 v0, 0x99

    const v2, 0x4a52581a    # 3446278.5f

    aput v2, v1, v0

    const/16 v0, 0x9a

    const v2, -0x3d0d0fce

    aput v2, v1, v0

    const/16 v0, 0x9b

    const v2, -0x7d6d6fee

    aput v2, v1, v0

    const/16 v0, 0x9c

    const v2, -0x3c0c0fcd

    aput v2, v1, v0

    const/16 v0, 0x9d

    const v2, 0x49414809

    aput v2, v1, v0

    const/16 v0, 0x9e

    const v2, 0x48707838

    aput v2, v1, v0

    const/16 v0, 0x9f

    const v2, -0x333f33f4

    aput v2, v1, v0

    const/16 v0, 0xa0

    const v2, 0x5111415

    aput v2, v1, v0

    const/16 v0, 0xa1

    const v2, -0x340c07c5    # -3.197759E7f

    aput v2, v1, v0

    const/16 v0, 0xa2

    const v2, 0x40707030

    aput v2, v1, v0

    const/16 v0, 0xa3

    const v2, 0x45717435

    aput v2, v1, v0

    const/16 v0, 0xa4

    const v2, 0x4f737c3f    # 4.08500608E9f

    aput v2, v1, v0

    const/16 v0, 0xa5

    const v2, 0x5313435

    aput v2, v1, v0

    const/16 v0, 0xa6

    const v2, 0x101010

    aput v2, v1, v0

    const/16 v0, 0xa7

    const v2, 0x3030003

    aput v2, v1, v0

    const/16 v0, 0xa8

    const v2, 0x44606424

    aput v2, v1, v0

    const/16 v0, 0xa9

    const v2, 0x4d616c2d    # 2.36372688E8f

    aput v2, v1, v0

    const/16 v0, 0xaa

    const v2, -0x393d3bfa

    aput v2, v1, v0

    const/16 v0, 0xab

    const v2, 0x44707434

    aput v2, v1, v0

    const/16 v0, 0xac

    const v2, -0x3a2e2beb

    aput v2, v1, v0

    const/16 v0, 0xad

    const v2, -0x7b4f4bcc

    aput v2, v1, v0

    const/16 v0, 0xae

    const v2, -0x351d17d6    # -7435285.0f

    aput v2, v1, v0

    const/16 v0, 0xaf

    const v2, 0x9010809

    aput v2, v1, v0

    const/16 v0, 0xb0

    const v2, 0x46727436

    aput v2, v1, v0

    const/16 v0, 0xb1

    const v2, 0x9111819

    aput v2, v1, v0

    const/16 v0, 0xb2

    const v2, -0x310d03c2

    aput v2, v1, v0

    const/16 v0, 0xb3

    const v2, 0x40404000    # 3.0039062f

    aput v2, v1, v0

    const/16 v0, 0xb4

    const v2, 0x2121012

    aput v2, v1, v0

    const/16 v0, 0xb5

    const v2, -0x3f1f1fe0

    aput v2, v1, v0

    const/16 v0, 0xb6

    const v2, -0x724e43c3

    aput v2, v1, v0

    const/16 v0, 0xb7

    const v2, 0x5010405

    aput v2, v1, v0

    const/16 v0, 0xb8

    const v2, -0x350d07c6    # -7961629.0f

    aput v2, v1, v0

    const/16 v0, 0xb9

    const v2, 0x1010001

    aput v2, v1, v0

    const/16 v0, 0xba

    const v2, -0x3f0f0fd0

    aput v2, v1, v0

    const/16 v0, 0xbb

    const v2, 0xa22282a

    aput v2, v1, v0

    const/16 v0, 0xbc

    const v2, 0x4e525c1e    # 8.8231309E8f

    aput v2, v1, v0

    const/16 v0, 0xbd

    const v2, -0x765e57d7

    aput v2, v1, v0

    const/16 v0, 0xbe

    const v2, 0x46525416

    aput v2, v1, v0

    const/16 v0, 0xbf

    const v2, 0x43434003

    aput v2, v1, v0

    const/16 v0, 0xc0

    const v2, -0x7a7e7bfb

    aput v2, v1, v0

    const/16 v0, 0xc1

    const v2, 0x4101414

    aput v2, v1, v0

    const/16 v0, 0xc2

    const v2, -0x767e77f7

    aput v2, v1, v0

    const/16 v0, 0xc3

    const v2, -0x746c67e5

    aput v2, v1, v0

    const/16 v0, 0xc4

    const v2, -0x7f4f4fd0

    aput v2, v1, v0

    const/16 v0, 0xc5

    const v2, -0x3a1e1bdb

    aput v2, v1, v0

    const/16 v0, 0xc6

    const v2, 0x48404808    # 196896.12f

    aput v2, v1, v0

    const/16 v0, 0xc7

    const v2, 0x49717839

    aput v2, v1, v0

    const/16 v0, 0xc8

    const v2, -0x786c6be9

    aput v2, v1, v0

    const/16 v0, 0xc9

    const v2, -0x330f03c4

    aput v2, v1, v0

    const/16 v0, 0xca

    const v2, 0xe121c1e

    aput v2, v1, v0

    const/16 v0, 0xcb

    const v2, -0x7d7d7ffe

    aput v2, v1, v0

    const/16 v0, 0xcc

    const v2, 0x1212021

    aput v2, v1, v0

    const/16 v0, 0xcd

    const v2, -0x737f73f4

    aput v2, v1, v0

    const/16 v0, 0xce

    const v2, 0xb13181b

    aput v2, v1, v0

    const/16 v0, 0xcf

    const v2, 0x4f535c1f

    aput v2, v1, v0

    const/16 v0, 0xd0

    const v2, 0x47737437

    aput v2, v1, v0

    const/16 v0, 0xd1

    const v2, 0x44505414

    aput v2, v1, v0

    const/16 v0, 0xd2

    const v2, -0x7d4d4fce

    aput v2, v1, v0

    const/16 v0, 0xd3

    const v2, 0xd111c1d

    aput v2, v1, v0

    const/16 v0, 0xd4

    const v2, 0x5212425

    aput v2, v1, v0

    const/16 v0, 0xd5

    const v2, 0x4f434c0f

    aput v2, v1, v0

    const/16 v0, 0xd7

    const v2, 0x46424406

    aput v2, v1, v0

    const/16 v0, 0xd8

    const v2, -0x321e13d3

    aput v2, v1, v0

    const/16 v0, 0xd9

    const v2, 0x48505818    # 213344.38f

    aput v2, v1, v0

    const/16 v0, 0xda

    const v2, 0x42525012

    aput v2, v1, v0

    const/16 v0, 0xdb

    const v2, -0x341c17d5    # -2.9872214E7f

    aput v2, v1, v0

    const/16 v0, 0xdc

    const v2, 0x4e727c3e

    aput v2, v1, v0

    const/16 v0, 0xdd

    const v2, -0x352d27e6    # -6908941.0f

    aput v2, v1, v0

    const/16 v0, 0xde

    const v2, -0x363e37f7

    aput v2, v1, v0

    const/16 v0, 0xdf

    const v2, -0x320e03c3

    aput v2, v1, v0

    const/16 v0, 0xe0

    const v2, 0x303030

    aput v2, v1, v0

    const/16 v0, 0xe1

    const v2, -0x7a6e6beb

    aput v2, v1, v0

    const/16 v0, 0xe2

    const v2, 0x45616425

    aput v2, v1, v0

    const/16 v0, 0xe3

    const v2, 0xc303c3c

    aput v2, v1, v0

    const/16 v0, 0xe4

    const v2, -0x794d4bca

    aput v2, v1, v0

    const/16 v0, 0xe5

    const v2, -0x3b1f1bdc

    aput v2, v1, v0

    const/16 v0, 0xe6

    const v2, -0x744c47c5

    aput v2, v1, v0

    const/16 v0, 0xe7

    const v2, 0x4c707c3c    # 6.3041776E7f

    aput v2, v1, v0

    const/16 v0, 0xe8

    const v2, 0xe020c0e

    aput v2, v1, v0

    const/16 v0, 0xe9

    const v2, 0x40505010

    aput v2, v1, v0

    const/16 v0, 0xea

    const v2, 0x9313839

    aput v2, v1, v0

    const/16 v0, 0xeb

    const v2, 0x6222426

    aput v2, v1, v0

    const/16 v0, 0xec

    const v2, 0x2323032

    aput v2, v1, v0

    const/16 v0, 0xed

    const v2, -0x7b7f7bfc

    aput v2, v1, v0

    const/16 v0, 0xee

    const v2, 0x49616829

    aput v2, v1, v0

    const/16 v0, 0xef

    const v2, -0x7c6c6fed

    aput v2, v1, v0

    const/16 v0, 0xf0

    const v2, 0x7333437

    aput v2, v1, v0

    const/16 v0, 0xf1

    const v2, -0x381c1bd9

    aput v2, v1, v0

    const/16 v0, 0xf2

    const v2, 0x4202424

    aput v2, v1, v0

    const/16 v0, 0xf3

    const v2, -0x7b5f5bdc

    aput v2, v1, v0

    const/16 v0, 0xf4

    const v2, -0x343c37f5    # -2.5661462E7f

    aput v2, v1, v0

    const/16 v0, 0xf5

    const v2, 0x43535013

    aput v2, v1, v0

    const/16 v0, 0xf6

    const v2, 0xa02080a

    aput v2, v1, v0

    const/16 v0, 0xf7

    const v2, -0x787c7bf9

    aput v2, v1, v0

    const/16 v0, 0xf8

    const v2, -0x362e27e7

    aput v2, v1, v0

    const/16 v0, 0xf9

    const v2, 0x4c404c0c    # 5.040952E7f

    aput v2, v1, v0

    const/16 v0, 0xfa

    const v2, -0x7c7c7ffd

    aput v2, v1, v0

    const/16 v0, 0xfb

    const v2, -0x707c73f1

    aput v2, v1, v0

    const/16 v0, 0xfc

    const v2, -0x313d33f2

    aput v2, v1, v0

    const/16 v0, 0xfd

    const v2, 0xb33383b

    aput v2, v1, v0

    const/16 v0, 0xfe

    const v2, 0x4a42480a    # 3183106.5f

    aput v2, v1, v0

    const/16 v0, 0xff

    const v2, -0x784c4bc9

    aput v2, v1, v0

    sput-object v1, Lkr/or/kisa/seed/Seedx;->SS3:[I

    .line 587
    new-array v0, v15, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkr/or/kisa/seed/Seedx;->KC:[I

    .line 593
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lkr/or/kisa/seed/Seedx;->BIG:Ljava/lang/Boolean;

    .line 594
    sget-object v0, Lkr/or/kisa/seed/Seedx;->BIG:Ljava/lang/Boolean;

    sput-object v0, Lkr/or/kisa/seed/Seedx;->ENDIAN:Ljava/lang/Boolean;

    return-void

    :array_0
    .array-data 4
        -0x61c88647
        0x3c6ef373    # 0.01458441f
        0x78dde6e6
        -0xe443234
        -0x1c886467
        -0x3910c8cd
        -0x72219199
        0x1bbcdccf
        0x3779b99e
        0x6ef3733c
        -0x22191988
        -0x4432330f
        0x779b99e3
        -0x10c8cc3a
        -0x21919873
        -0x432330e5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 18
    iput v0, p0, Lkr/or/kisa/seed/Seedx;->NoRoundKeys:I

    const/16 v0, 0x10

    .line 19
    iput v0, p0, Lkr/or/kisa/seed/Seedx;->SeedBlockSize:I

    const/16 v0, 0x80

    .line 20
    iput v0, p0, Lkr/or/kisa/seed/Seedx;->SeedBlockLen:I

    return-void
.end method

.method private static EncRoundKeyUpdate0([I[I[I[I[II)V
    .locals 4

    const/4 v0, 0x0

    .line 268
    aget v1, p1, v0

    .line 269
    aget v2, p1, v0

    ushr-int/lit8 v2, v2, 0x8

    aget v3, p2, v0

    shl-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    aput v2, p1, v0

    .line 270
    aget v2, p2, v0

    ushr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 271
    aget p1, p1, v0

    aget p3, p3, v0

    add-int/2addr p1, p3

    sget-object p3, Lkr/or/kisa/seed/Seedx;->KC:[I

    aget p3, p3, p5

    sub-int/2addr p1, p3

    .line 272
    aget p2, p2, v0

    sget-object p3, Lkr/or/kisa/seed/Seedx;->KC:[I

    aget p3, p3, p5

    add-int/2addr p2, p3

    aget p3, p4, v0

    sub-int/2addr p2, p3

    .line 273
    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result p4

    aget p3, p3, p4

    sget-object p4, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result p5

    aget p4, p4, p5

    xor-int/2addr p3, p4

    sget-object p4, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result p5

    aget p4, p4, p5

    xor-int/2addr p3, p4

    .line 274
    sget-object p4, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result p1

    aget p1, p4, p1

    xor-int/2addr p1, p3

    .line 273
    aput p1, p0, v0

    .line 275
    sget-object p1, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result p3

    aget p1, p1, p3

    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result p4

    aget p3, p3, p4

    xor-int/2addr p1, p3

    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result p4

    aget p3, p3, p4

    xor-int/2addr p1, p3

    .line 276
    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result p2

    aget p2, p3, p2

    xor-int/2addr p1, p2

    const/4 p2, 0x1

    .line 275
    aput p1, p0, p2

    return-void
.end method

.method private static EncRoundKeyUpdate1([I[I[I[I[II)V
    .locals 4

    const/4 v0, 0x0

    .line 281
    aget v1, p3, v0

    .line 282
    aget v2, p3, v0

    shl-int/lit8 v2, v2, 0x8

    aget v3, p4, v0

    ushr-int/lit8 v3, v3, 0x18

    xor-int/2addr v2, v3

    aput v2, p3, v0

    .line 283
    aget v2, p4, v0

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v1, v1, 0x18

    xor-int/2addr v1, v2

    aput v1, p4, v0

    .line 284
    aget p1, p1, v0

    aget p3, p3, v0

    add-int/2addr p1, p3

    sget-object p3, Lkr/or/kisa/seed/Seedx;->KC:[I

    aget p3, p3, p5

    sub-int/2addr p1, p3

    .line 285
    aget p2, p2, v0

    sget-object p3, Lkr/or/kisa/seed/Seedx;->KC:[I

    aget p3, p3, p5

    add-int/2addr p2, p3

    aget p3, p4, v0

    sub-int/2addr p2, p3

    .line 286
    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result p4

    aget p3, p3, p4

    sget-object p4, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result p5

    aget p4, p4, p5

    xor-int/2addr p3, p4

    sget-object p4, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result p5

    aget p4, p4, p5

    xor-int/2addr p3, p4

    .line 287
    sget-object p4, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {p1}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result p1

    aget p1, p4, p1

    xor-int/2addr p1, p3

    .line 286
    aput p1, p0, v0

    .line 288
    sget-object p1, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result p3

    aget p1, p1, p3

    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result p4

    aget p3, p3, p4

    xor-int/2addr p1, p3

    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result p4

    aget p3, p3, p4

    xor-int/2addr p1, p3

    .line 289
    sget-object p3, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {p2}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result p2

    aget p2, p3, p2

    xor-int/2addr p1, p2

    const/4 p2, 0x1

    .line 288
    aput p1, p0, p2

    return-void
.end method

.method private static EndianChange(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static EndianChange([I)V
    .locals 4

    const/4 v0, 0x0

    .line 40
    aget v1, p0, v0

    ushr-int/lit8 v1, v1, 0x18

    aget v2, p0, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aget v2, p0, v0

    shl-int/lit8 v2, v2, 0x8

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 41
    aget v2, p0, v0

    ushr-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 40
    aput v1, p0, v0

    return-void
.end method

.method private static GetB0(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static GetB1(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static GetB2(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static GetB3(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static SeedDecrypt([BI[I[BI)V
    .locals 11

    const/4 v0, 0x1

    .line 171
    new-array v1, v0, [I

    .line 172
    new-array v2, v0, [I

    .line 173
    new-array v3, v0, [I

    .line 174
    new-array v4, v0, [I

    const/4 v5, 0x2

    .line 175
    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v7, v1, v7

    aput v7, v2, v7

    aput v7, v3, v7

    aput v7, v4, v7

    add-int/lit8 v8, p1, 0x0

    .line 181
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v7

    .line 182
    aget v8, v1, v7

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v1, v7

    .line 183
    aget v8, v1, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v1, v7

    .line 184
    aget v8, v1, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x3

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v1, v7

    add-int/lit8 v8, p1, 0x4

    .line 185
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v2, v7

    .line 186
    aget v8, v2, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v2, v7

    .line 187
    aget v8, v2, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x6

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v2, v7

    .line 188
    aget v8, v2, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x7

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v2, v7

    add-int/lit8 v8, p1, 0x8

    .line 189
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v3, v7

    .line 190
    aget v8, v3, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x9

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v3, v7

    .line 191
    aget v8, v3, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xa

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v3, v7

    .line 192
    aget v8, v3, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xb

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v3, v7

    add-int/lit8 v8, p1, 0xc

    .line 193
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v7

    .line 194
    aget v8, v4, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xd

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v4, v7

    .line 195
    aget v8, v4, v7

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xe

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v4, v7

    .line 196
    aget v8, v4, v7

    shl-int/2addr v8, v9

    add-int/lit8 p1, p1, 0xf

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    xor-int/2addr p0, v8

    aput p0, v4, v7

    .line 197
    sget-object p0, Lkr/or/kisa/seed/Seedx;->ENDIAN:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 198
    invoke-static {v1}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 199
    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 200
    invoke-static {v3}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 201
    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    :cond_0
    const/16 p0, 0x1e

    const/16 p1, 0x1f

    .line 203
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x1d

    .line 204
    aget p0, p2, p0

    aput p0, v6, v7

    .line 205
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x1c

    .line 206
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x1b

    .line 207
    aget p0, p2, p0

    aput p0, v6, v7

    .line 208
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x1a

    .line 209
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x19

    .line 210
    aget p0, p2, p0

    aput p0, v6, v7

    .line 211
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x18

    .line 212
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x17

    .line 213
    aget p0, p2, p0

    aput p0, v6, v7

    .line 214
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x16

    .line 215
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x15

    .line 216
    aget p0, p2, p0

    aput p0, v6, v7

    .line 217
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x14

    .line 218
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x13

    .line 219
    aget p0, p2, p0

    aput p0, v6, v7

    .line 220
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x12

    .line 221
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0x11

    .line 222
    aget p0, p2, p0

    aput p0, v6, v7

    .line 223
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0x10

    .line 224
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0xf

    .line 225
    aget p0, p2, p0

    aput p0, v6, v7

    .line 226
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0xe

    .line 227
    aget p1, p2, p1

    aput p1, v6, v0

    .line 228
    aget p0, p2, p0

    aput p0, v6, v7

    .line 229
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p0, 0xd

    .line 230
    aget p0, p2, p0

    aput p0, v6, v0

    const/16 p0, 0xc

    .line 231
    aget p1, p2, p0

    aput p1, v6, v7

    .line 232
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p1, 0xb

    .line 233
    aget p1, p2, p1

    aput p1, v6, v0

    const/16 p1, 0xa

    .line 234
    aget p1, p2, p1

    aput p1, v6, v7

    .line 235
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 p1, 0x9

    .line 236
    aget p1, p2, p1

    aput p1, v6, v0

    .line 237
    aget p1, p2, v9

    aput p1, v6, v7

    .line 238
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/4 p1, 0x7

    .line 239
    aget p1, p2, p1

    aput p1, v6, v0

    const/4 p1, 0x6

    .line 240
    aget p1, p2, p1

    aput p1, v6, v7

    .line 241
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/4 p1, 0x5

    .line 242
    aget p1, p2, p1

    aput p1, v6, v0

    const/4 p1, 0x4

    .line 243
    aget v8, p2, p1

    aput v8, v6, v7

    .line 244
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/4 v8, 0x3

    .line 245
    aget v10, p2, v8

    aput v10, v6, v0

    .line 246
    aget v5, p2, v5

    aput v5, v6, v7

    .line 247
    invoke-static {v1, v2, v3, v4, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    .line 248
    aget v5, p2, v0

    aput v5, v6, v0

    .line 249
    aget p2, p2, v7

    aput p2, v6, v7

    .line 250
    invoke-static {v3, v4, v1, v2, v6}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    .line 251
    sget-object p2, Lkr/or/kisa/seed/Seedx;->ENDIAN:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 252
    invoke-static {v1}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 253
    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 254
    invoke-static {v3}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 255
    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_2

    return-void

    :cond_2
    add-int v0, p4, p2

    .line 258
    aget v5, v3, v7

    rsub-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x8

    ushr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 v0, p4, 0x4

    add-int/2addr v0, p2

    .line 259
    aget v5, v4, v7

    ushr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 v0, p4, 0x8

    add-int/2addr v0, p2

    .line 260
    aget v5, v1, v7

    ushr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 v0, p4, 0xc

    add-int/2addr v0, p2

    .line 261
    aget v5, v2, v7

    ushr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static SeedEncrypt([BI[II)V
    .locals 12

    const/4 v0, 0x1

    .line 74
    new-array v1, v0, [I

    .line 75
    new-array v2, v0, [I

    .line 76
    new-array v3, v0, [I

    .line 77
    new-array v4, v0, [I

    const/4 v5, 0x0

    aput v5, v1, v5

    aput v5, v2, v5

    aput v5, v3, v5

    aput v5, v4, v5

    const/4 v6, 0x2

    .line 82
    new-array v7, v6, [I

    add-int/lit8 v8, p1, 0x0

    .line 84
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v1, v5

    .line 85
    aget v8, v1, v5

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v1, v5

    .line 86
    aget v8, v1, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v1, v5

    .line 87
    aget v8, v1, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x3

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v1, v5

    add-int/lit8 v8, p1, 0x4

    .line 88
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v2, v5

    .line 89
    aget v8, v2, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v2, v5

    .line 90
    aget v8, v2, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x6

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v2, v5

    .line 91
    aget v8, v2, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x7

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v2, v5

    add-int/lit8 v8, p1, 0x8

    .line 92
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v3, v5

    .line 93
    aget v8, v3, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0x9

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v3, v5

    .line 94
    aget v8, v3, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xa

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v3, v5

    .line 95
    aget v8, v3, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xb

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v3, v5

    add-int/lit8 v8, p1, 0xc

    .line 96
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v5

    .line 97
    aget v8, v4, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xd

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v4, v5

    .line 98
    aget v8, v4, v5

    shl-int/2addr v8, v9

    add-int/lit8 v10, p1, 0xe

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aput v8, v4, v5

    .line 99
    aget v8, v4, v5

    shl-int/2addr v8, v9

    add-int/lit8 p1, p1, 0xf

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    xor-int/2addr p1, v8

    aput p1, v4, v5

    .line 100
    sget-object p1, Lkr/or/kisa/seed/Seedx;->ENDIAN:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-static {v1}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 102
    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 103
    invoke-static {v3}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 104
    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 106
    :cond_0
    aget p1, p2, v5

    aput p1, v7, v5

    .line 107
    aget p1, p2, v0

    aput p1, v7, v0

    .line 108
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    .line 109
    aget p1, p2, v6

    aput p1, v7, v5

    const/4 p1, 0x3

    .line 110
    aget v6, p2, p1

    aput v6, v7, v0

    .line 111
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/4 v6, 0x4

    .line 112
    aget v8, p2, v6

    aput v8, v7, v5

    const/4 v8, 0x5

    .line 113
    aget v8, p2, v8

    aput v8, v7, v0

    .line 114
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/4 v8, 0x6

    .line 115
    aget v8, p2, v8

    aput v8, v7, v5

    const/4 v8, 0x7

    .line 116
    aget v8, p2, v8

    aput v8, v7, v0

    .line 117
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    .line 118
    aget v8, p2, v9

    aput v8, v7, v5

    const/16 v8, 0x9

    .line 119
    aget v8, p2, v8

    aput v8, v7, v0

    .line 120
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v8, 0xa

    .line 121
    aget v8, p2, v8

    aput v8, v7, v5

    const/16 v8, 0xb

    .line 122
    aget v8, p2, v8

    aput v8, v7, v0

    .line 123
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v8, 0xc

    .line 124
    aget v10, p2, v8

    aput v10, v7, v5

    const/16 v10, 0xe

    const/16 v11, 0xd

    .line 125
    aget v11, p2, v11

    aput v11, v7, v0

    .line 126
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0xf

    .line 127
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x10

    .line 128
    aget v11, p2, v11

    aput v11, v7, v0

    .line 129
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x11

    .line 130
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x12

    .line 131
    aget v11, p2, v11

    aput v11, v7, v0

    .line 132
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x13

    .line 133
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x14

    .line 134
    aget v11, p2, v11

    aput v11, v7, v0

    .line 135
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x15

    .line 136
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x16

    .line 137
    aget v11, p2, v11

    aput v11, v7, v0

    .line 138
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x17

    .line 139
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x18

    .line 140
    aget v11, p2, v11

    aput v11, v7, v0

    .line 141
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x19

    .line 142
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x1a

    .line 143
    aget v11, p2, v11

    aput v11, v7, v0

    .line 144
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x1b

    .line 145
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x1c

    .line 146
    aget v11, p2, v11

    aput v11, v7, v0

    .line 147
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x1d

    .line 148
    aget v10, p2, v10

    aput v10, v7, v5

    const/16 v10, 0x1e

    .line 149
    aget v11, p2, v11

    aput v11, v7, v0

    .line 150
    invoke-static {v1, v2, v3, v4, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    const/16 v11, 0x1f

    .line 151
    aget v10, p2, v10

    aput v10, v7, v5

    .line 152
    aget p2, p2, v11

    aput p2, v7, v0

    .line 153
    invoke-static {v3, v4, v1, v2, v7}, Lkr/or/kisa/seed/Seedx;->SeedRound([I[I[I[I[I)V

    .line 154
    sget-object p2, Lkr/or/kisa/seed/Seedx;->ENDIAN:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 155
    invoke-static {v1}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 156
    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 157
    invoke-static {v3}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    .line 158
    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->EndianChange([I)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-lt p2, v6, :cond_2

    return-void

    :cond_2
    add-int v0, p3, p2

    .line 161
    aget v7, v3, v5

    rsub-int/lit8 v10, p2, 0x3

    mul-int/lit8 v10, v10, 0x8

    ushr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v0

    add-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p2

    .line 162
    aget v7, v4, v5

    ushr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v0

    add-int/lit8 v0, p3, 0x8

    add-int/2addr v0, p2

    .line 163
    aget v7, v1, v5

    ushr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v0

    add-int/lit8 v0, p3, 0xc

    add-int/2addr v0, p2

    .line 164
    aget v7, v2, v5

    ushr-int/2addr v7, v10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private static SeedRound([I[I[I[I[I)V
    .locals 7

    const/4 v0, 0x0

    .line 53
    aget p2, p2, v0

    aget v1, p4, v0

    xor-int/2addr p2, v1

    .line 54
    aget p3, p3, v0

    const/4 v1, 0x1

    aget p4, p4, v1

    xor-int/2addr p3, p4

    xor-int/2addr p3, p2

    const-wide/32 v1, -0x80000000

    const p4, 0x7fffffff

    if-ltz p2, :cond_0

    int-to-long v3, p2

    goto :goto_0

    :cond_0
    and-int/2addr p2, p4

    int-to-long v3, p2

    or-long v5, v3, v1

    move-wide v3, v5

    .line 57
    :goto_0
    sget-object p2, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result v5

    aget p2, p2, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result v6

    aget v5, v5, v6

    xor-int/2addr p2, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result v6

    aget v5, v5, v6

    xor-int/2addr p2, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result p3

    aget p3, v5, p3

    xor-int/2addr p2, p3

    if-ltz p2, :cond_1

    int-to-long p2, p2

    goto :goto_1

    :cond_1
    and-int/2addr p2, p4

    int-to-long p2, p2

    or-long v5, p2, v1

    move-wide p2, v5

    :goto_1
    const/4 v5, 0x0

    add-long v5, v3, p2

    .line 60
    sget-object v3, Lkr/or/kisa/seed/Seedx;->SS0:[I

    long-to-int v4, v5

    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result v5

    aget v3, v3, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result v6

    aget v5, v5, v6

    xor-int/2addr v3, v5

    .line 61
    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result v6

    aget v5, v5, v6

    xor-int/2addr v3, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {v4}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result v4

    aget v4, v5, v4

    xor-int/2addr v3, v4

    if-ltz v3, :cond_2

    int-to-long v3, v3

    goto :goto_2

    :cond_2
    and-int/2addr v3, p4

    int-to-long v3, v3

    or-long v5, v3, v1

    move-wide v3, v5

    :goto_2
    const/4 v5, 0x0

    add-long v5, p2, v3

    .line 64
    sget-object p2, Lkr/or/kisa/seed/Seedx;->SS0:[I

    long-to-int p3, v5

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result v5

    aget p2, p2, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result v6

    aget v5, v5, v6

    xor-int/2addr p2, v5

    .line 65
    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result v6

    aget v5, v5, v6

    xor-int/2addr p2, v5

    sget-object v5, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {p3}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result p3

    aget p3, v5, p3

    xor-int/2addr p2, p3

    if-ltz p2, :cond_3

    int-to-long p2, p2

    goto :goto_3

    :cond_3
    and-int/2addr p2, p4

    int-to-long p2, p2

    or-long v5, p2, v1

    move-wide p2, v5

    :goto_3
    const/4 p4, 0x0

    add-long v1, v3, p2

    .line 68
    aget p4, p0, v0

    long-to-int v1, v1

    xor-int/2addr p4, v1

    aput p4, p0, v0

    .line 69
    aget p0, p1, v0

    long-to-int p2, p2

    xor-int/2addr p0, p2

    aput p0, p1, v0

    return-void
.end method

.method public static SeedRoundKey([I[B)V
    .locals 26

    const/4 v1, 0x1

    .line 293
    new-array v8, v1, [I

    .line 294
    new-array v9, v1, [I

    .line 295
    new-array v10, v1, [I

    .line 296
    new-array v11, v1, [I

    const/4 v12, 0x2

    .line 297
    new-array v13, v12, [I

    const/4 v14, 0x0

    .line 299
    aget-byte v2, p1, v14

    and-int/lit16 v2, v2, 0xff

    aput v2, v8, v14

    .line 300
    aget v2, v8, v14

    const/16 v15, 0x8

    shl-int/2addr v2, v15

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v8, v14

    .line 301
    aget v2, v8, v14

    shl-int/2addr v2, v15

    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v8, v14

    .line 302
    aget v2, v8, v14

    shl-int/2addr v2, v15

    const/16 v16, 0x3

    aget-byte v3, p1, v16

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v8, v14

    const/16 v17, 0x4

    .line 303
    aget-byte v2, p1, v17

    and-int/lit16 v2, v2, 0xff

    aput v2, v9, v14

    .line 304
    aget v2, v9, v14

    shl-int/2addr v2, v15

    const/16 v18, 0x5

    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v9, v14

    .line 305
    aget v2, v9, v14

    shl-int/2addr v2, v15

    const/16 v19, 0x6

    aget-byte v3, p1, v19

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v9, v14

    .line 306
    aget v2, v9, v14

    shl-int/2addr v2, v15

    const/16 v20, 0x7

    aget-byte v3, p1, v20

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v9, v14

    .line 307
    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    aput v2, v10, v14

    .line 308
    aget v2, v10, v14

    shl-int/2addr v2, v15

    const/16 v21, 0x9

    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v10, v14

    .line 309
    aget v2, v10, v14

    shl-int/2addr v2, v15

    const/16 v22, 0xa

    aget-byte v3, p1, v22

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v10, v14

    .line 310
    aget v2, v10, v14

    shl-int/2addr v2, v15

    const/16 v23, 0xb

    aget-byte v3, p1, v23

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v10, v14

    const/16 v24, 0xc

    .line 311
    aget-byte v2, p1, v24

    and-int/lit16 v2, v2, 0xff

    aput v2, v11, v14

    .line 312
    aget v2, v11, v14

    shl-int/2addr v2, v15

    const/16 v25, 0xd

    aget-byte v3, p1, v25

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v11, v14

    .line 313
    aget v2, v11, v14

    shl-int/2addr v2, v15

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    aput v2, v11, v14

    .line 314
    aget v2, v11, v14

    shl-int/2addr v2, v15

    const/16 v3, 0xf

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, v2

    aput v0, v11, v14

    .line 315
    sget-object v0, Lkr/or/kisa/seed/Seedx;->ENDIAN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    aget v0, v8, v14

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->EndianChange(I)I

    move-result v0

    aput v0, v8, v14

    .line 317
    aget v0, v9, v14

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->EndianChange(I)I

    move-result v0

    aput v0, v9, v14

    .line 318
    aget v0, v10, v14

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->EndianChange(I)I

    move-result v0

    aput v0, v10, v14

    .line 319
    aget v0, v11, v14

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->EndianChange(I)I

    move-result v0

    aput v0, v11, v14

    .line 321
    :cond_0
    aget v0, v8, v14

    aget v2, v10, v14

    add-int/2addr v0, v2

    sget-object v2, Lkr/or/kisa/seed/Seedx;->KC:[I

    aget v2, v2, v14

    sub-int/2addr v0, v2

    .line 322
    aget v2, v9, v14

    aget v3, v11, v14

    sub-int/2addr v2, v3

    sget-object v3, Lkr/or/kisa/seed/Seedx;->KC:[I

    aget v3, v3, v14

    add-int/2addr v2, v3

    .line 323
    sget-object v3, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result v4

    aget v3, v3, v4

    sget-object v4, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result v5

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result v5

    aget v4, v4, v5

    xor-int/2addr v3, v4

    .line 324
    sget-object v4, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {v0}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result v0

    aget v0, v4, v0

    xor-int/2addr v0, v3

    .line 323
    aput v0, p0, v14

    .line 325
    sget-object v0, Lkr/or/kisa/seed/Seedx;->SS0:[I

    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->GetB0(I)I

    move-result v3

    aget v0, v0, v3

    sget-object v3, Lkr/or/kisa/seed/Seedx;->SS1:[I

    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->GetB1(I)I

    move-result v4

    aget v3, v3, v4

    xor-int/2addr v0, v3

    sget-object v3, Lkr/or/kisa/seed/Seedx;->SS2:[I

    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->GetB2(I)I

    move-result v4

    aget v3, v3, v4

    xor-int/2addr v0, v3

    .line 326
    sget-object v3, Lkr/or/kisa/seed/Seedx;->SS3:[I

    invoke-static {v2}, Lkr/or/kisa/seed/Seedx;->GetB3(I)I

    move-result v2

    aget v2, v3, v2

    xor-int/2addr v0, v2

    .line 325
    aput v0, p0, v1

    const/4 v7, 0x1

    move-object v2, v13

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    .line 327
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    .line 328
    aget v0, v13, v14

    aput v0, p0, v12

    .line 329
    aget v0, v13, v1

    aput v0, p0, v16

    const/4 v7, 0x2

    .line 330
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    .line 331
    aget v0, v13, v14

    aput v0, p0, v17

    .line 332
    aget v0, v13, v1

    aput v0, p0, v18

    const/4 v7, 0x3

    .line 333
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    .line 334
    aget v0, v13, v14

    aput v0, p0, v19

    .line 335
    aget v0, v13, v1

    aput v0, p0, v20

    const/4 v7, 0x4

    .line 336
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    .line 337
    aget v0, v13, v14

    aput v0, p0, v15

    .line 338
    aget v0, v13, v1

    aput v0, p0, v21

    const/4 v7, 0x5

    .line 339
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    .line 340
    aget v0, v13, v14

    aput v0, p0, v22

    .line 341
    aget v0, v13, v1

    aput v0, p0, v23

    const/4 v7, 0x6

    .line 342
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    .line 343
    aget v0, v13, v14

    aput v0, p0, v24

    const/16 v0, 0xe

    .line 344
    aget v2, v13, v1

    aput v2, p0, v25

    const/4 v7, 0x7

    move-object v2, v13

    .line 345
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    const/16 v2, 0xf

    .line 346
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x10

    .line 347
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0x8

    move-object v2, v13

    move-object v3, v8

    .line 348
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    const/16 v2, 0x11

    .line 349
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x12

    .line 350
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0x9

    move-object v2, v13

    move-object v3, v8

    .line 351
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    const/16 v2, 0x13

    .line 352
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x14

    .line 353
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0xa

    move-object v2, v13

    move-object v3, v8

    .line 354
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    const/16 v2, 0x15

    .line 355
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x16

    .line 356
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0xb

    move-object v2, v13

    move-object v3, v8

    .line 357
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    const/16 v2, 0x17

    .line 358
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x18

    .line 359
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0xc

    move-object v2, v13

    move-object v3, v8

    .line 360
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    const/16 v2, 0x19

    .line 361
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x1a

    .line 362
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0xd

    move-object v2, v13

    move-object v3, v8

    .line 363
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    const/16 v2, 0x1b

    .line 364
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x1c

    .line 365
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0xe

    move-object v2, v13

    move-object v3, v8

    .line 366
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate1([I[I[I[I[II)V

    const/16 v2, 0x1d

    .line 367
    aget v3, v13, v14

    aput v3, p0, v0

    const/16 v0, 0x1e

    .line 368
    aget v3, v13, v1

    aput v3, p0, v2

    const/16 v7, 0xf

    move-object v2, v13

    move-object v3, v8

    .line 369
    invoke-static/range {v2 .. v7}, Lkr/or/kisa/seed/Seedx;->EncRoundKeyUpdate0([I[I[I[I[II)V

    const/16 v2, 0x1f

    .line 370
    aget v3, v13, v14

    aput v3, p0, v0

    .line 371
    aget v0, v13, v1

    aput v0, p0, v2

    return-void
.end method

.method public static SeedXoringData([BI[B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int v1, p1, v0

    .line 377
    aget-byte v2, p0, v1

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
