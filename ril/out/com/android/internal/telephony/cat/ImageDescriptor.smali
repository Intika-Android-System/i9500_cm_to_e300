.class public Lcom/android/internal/telephony/cat/ImageDescriptor;
.super Ljava/lang/Object;
.source "ImageDescriptor.java"


# static fields
.field static final CODING_SCHEME_BASIC:I = 0x11

.field static final CODING_SCHEME_COLOUR:I = 0x21


# instance fields
.field mCodingScheme:I

.field mHeight:I

.field mHighOffset:I

.field mImageId:I

.field mLength:I

.field mLowOffset:I

.field mWidth:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    .line 43
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 44
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    .line 46
    iput v0, p0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    .line 47
    return-void
.end method

.method static parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;
    .registers 8
    .parameter "rawData"
    .parameter "valueIndex"

    .prologue
    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ImageDescriptor;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;-><init>()V

    .line 59
    .local v0, d:Lcom/android/internal/telephony/cat/ImageDescriptor;
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, valueIndex:I
    :try_start_7
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_d} :catch_bb

    .line 60
    add-int/lit8 p1, v2, 0x1

    .end local v2           #valueIndex:I
    .restart local p1
    :try_start_f
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_15} :catch_c6

    .line 61
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #valueIndex:I
    :try_start_17
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_1d} :catch_bb

    .line 64
    add-int/lit8 p1, v2, 0x1

    .end local v2           #valueIndex:I
    .restart local p1
    :try_start_1f
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 65
    iget v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_29} :catch_c6

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #valueIndex:I
    :try_start_2b
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_32} :catch_bb

    .line 67
    add-int/lit8 p1, v2, 0x1

    .end local v2           #valueIndex:I
    .restart local p1
    :try_start_34
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_3a} :catch_c6

    .line 68
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #valueIndex:I
    :try_start_3c
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_42} :catch_bb

    .line 70
    add-int/lit8 p1, v2, 0x1

    .end local v2           #valueIndex:I
    .restart local p1
    :try_start_44
    aget-byte v3, p0, v2
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_46} :catch_c6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #valueIndex:I
    :try_start_4c
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    .line 71
    const-string v3, "ImageDescriptor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse; Descriptor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mHighOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLowOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_b9} :catch_bb

    move p1, v2

    .line 78
    .end local v2           #valueIndex:I
    .restart local p1
    :goto_ba
    return-object v0

    .line 74
    .end local p1
    .restart local v2       #valueIndex:I
    :catch_bb
    move-exception v1

    move p1, v2

    .line 75
    .end local v2           #valueIndex:I
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local p1
    :goto_bd
    const-string v3, "ImageDescriptor"

    const-string v4, "parse; failed parsing image descriptor"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_ba

    .line 74
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_c6
    move-exception v1

    goto :goto_bd
.end method
