.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field mCurDataLength:I

.field mCurDataOffset:I

.field mCurOffset:I

.field mHasValidTlvObject:Z

.field mRecord:[B

.field mTlvLength:I

.field mTlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .registers 5
    .parameter "record"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    .line 41
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    .line 43
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    .line 46
    return-void
.end method

.method private parseCurrentTlvObject()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 92
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v2, v2, v3

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_16

    .line 115
    :cond_15
    :goto_15
    return v1

    .line 96
    :cond_16
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_44

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    .line 99
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_36
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_36} :catch_65

    .line 111
    :goto_36
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_15

    .line 115
    const/4 v1, 0x1

    goto :goto_15

    .line 100
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x81

    if-ne v2, v3, :cond_15

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    .line 103
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_64
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_44 .. :try_end_64} :catch_65

    goto :goto_36

    .line 107
    :catch_65
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_15
.end method


# virtual methods
.method public getData()[B
    .registers 6

    .prologue
    .line 76
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 80
    :goto_5
    return-object v0

    .line 78
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    new-array v0, v1, [B

    .line 79
    .local v0, ret:[B
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 67
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_5
.end method

.method public isValidObject()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return v0
.end method

.method public nextObject()Z
    .registers 3

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 52
    :goto_5
    return v0

    .line 50
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    goto :goto_5
.end method
