.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mLengthValid:Z

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;Z)V
    .registers 5
    .parameter "tag"
    .parameter
    .parameter "lengthValid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 42
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .registers 19
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, curIndex:I
    move-object/from16 v0, p0

    array-length v5, v0

    .line 81
    .local v5, endIndex:I
    const/4 v10, 0x0

    .line 82
    .local v10, length:I
    const/4 v7, 0x1

    .line 86
    .local v7, isLengthValid:Z
    add-int/lit8 v3, v2, 0x1

    .end local v2           #curIndex:I
    .local v3, curIndex:I
    :try_start_8
    aget-byte v14, p0, v2
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a} :catch_99
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_8 .. :try_end_a} :catch_10f

    and-int/lit16 v11, v14, 0xff

    .line 87
    .local v11, tag:I
    const/16 v14, 0xd0

    if-ne v11, v14, :cond_101

    .line 89
    add-int/lit8 v2, v3, 0x1

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    :try_start_12
    aget-byte v14, p0, v3
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_14} :catch_ff
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_12 .. :try_end_14} :catch_15c

    and-int/lit16 v12, v14, 0xff

    .line 90
    .local v12, temp:I
    const/16 v14, 0x80

    if-ge v12, v14, :cond_54

    .line 91
    move v10, v12

    .line 124
    .end local v12           #temp:I
    :goto_1b
    sub-int v14, v5, v2

    if-ge v14, v10, :cond_11d

    .line 125
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Command had extra data endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14

    .line 92
    .restart local v12       #temp:I
    :cond_54
    const/16 v14, 0x81

    if-ne v12, v14, :cond_c8

    .line 93
    add-int/lit8 v3, v2, 0x1

    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    :try_start_5a
    aget-byte v14, p0, v2

    and-int/lit16 v12, v14, 0xff

    .line 94
    const/16 v14, 0x80

    if-ge v12, v14, :cond_c4

    .line 95
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "length < 0x80 length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14
    :try_end_99
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5a .. :try_end_99} :catch_99
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_5a .. :try_end_99} :catch_10f

    .line 115
    .end local v11           #tag:I
    .end local v12           #temp:I
    :catch_99
    move-exception v4

    move v2, v3

    .line 116
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_9b
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IndexOutOfBoundsException  curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14

    .line 101
    .end local v2           #curIndex:I
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #curIndex:I
    .restart local v11       #tag:I
    .restart local v12       #temp:I
    :cond_c4
    move v10, v12

    move v2, v3

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    goto/16 :goto_1b

    .line 103
    :cond_c8
    :try_start_c8
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " curIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " endIndex="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14
    :try_end_ff
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c8 .. :try_end_ff} :catch_ff
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_c8 .. :try_end_ff} :catch_15c

    .line 115
    .end local v12           #temp:I
    :catch_ff
    move-exception v4

    goto :goto_9b

    .line 110
    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    :cond_101
    :try_start_101
    sget-object v14, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I
    :try_end_106
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_101 .. :try_end_106} :catch_99
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_101 .. :try_end_106} :catch_10f

    move-result v14

    and-int/lit16 v15, v11, -0x81

    if-ne v14, v15, :cond_15e

    .line 111
    const/4 v11, 0x0

    .line 112
    const/4 v2, 0x0

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    goto/16 :goto_1b

    .line 119
    .end local v2           #curIndex:I
    .end local v11           #tag:I
    .restart local v3       #curIndex:I
    :catch_10f
    move-exception v4

    move v2, v3

    .line 120
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    .local v4, e:Lcom/android/internal/telephony/cat/ResultException;
    :goto_111
    new-instance v14, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v14

    .line 130
    .end local v4           #e:Lcom/android/internal/telephony/cat/ResultException;
    .restart local v11       #tag:I
    :cond_11d
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v14, 0xd0

    if-ne v11, v14, :cond_156

    .line 134
    const/4 v13, 0x0

    .line 135
    .local v13, totalLength:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_12c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_153

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 136
    .local v8, item:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v9

    .line 137
    .local v9, itemLength:I
    const/16 v14, 0x80

    if-lt v9, v14, :cond_148

    const/16 v14, 0xff

    if-gt v9, v14, :cond_148

    .line 138
    add-int/lit8 v14, v9, 0x3

    add-int/2addr v13, v14

    goto :goto_12c

    .line 139
    :cond_148
    if-ltz v9, :cond_152

    const/16 v14, 0x80

    if-ge v9, v14, :cond_152

    .line 140
    add-int/lit8 v14, v9, 0x2

    add-int/2addr v13, v14

    goto :goto_12c

    .line 142
    :cond_152
    const/4 v7, 0x0

    .line 154
    .end local v8           #item:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v9           #itemLength:I
    :cond_153
    if-eq v10, v13, :cond_156

    .line 155
    const/4 v7, 0x0

    .line 159
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v13           #totalLength:I
    :cond_156
    new-instance v14, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v14, v11, v1, v7}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    return-object v14

    .line 119
    .end local v1           #ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :catch_15c
    move-exception v4

    goto :goto_111

    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    :cond_15e
    move v2, v3

    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    goto/16 :goto_1b
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method

.method public isLengthValid()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return v0
.end method
