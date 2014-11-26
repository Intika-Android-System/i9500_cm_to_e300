.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public call_domain:I

.field public call_type:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lcom/android/internal/telephony/ServiceStatus;

.field private mVideoPauseState:I

.field public peerAbility:[Lcom/android/internal/telephony/ServiceStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 178
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .registers 5
    .parameter "callType"
    .parameter "callDomain"
    .parameter "extraparams"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 184
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 185
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 186
    iput-object p3, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .registers 3
    .parameter "srcCall"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 190
    if-eqz p1, :cond_1c

    .line 191
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 192
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 193
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .line 195
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .line 197
    :cond_1c
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, newExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, extras:[Ljava/lang/String;
    if-nez p0, :cond_5

    .line 207
    const/4 v4, 0x0

    .line 220
    :goto_4
    return-object v4

    .line 212
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 214
    if-eqz v1, :cond_4e

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, i:I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_16

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4e
    move-object v4, v1

    .line 220
    goto :goto_4
.end method


# virtual methods
.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "extras"
    .parameter "key"

    .prologue
    .line 241
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eqz p1, :cond_26

    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 242
    aget-object v2, p1, v1

    if-eqz v2, :cond_23

    .line 243
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, currKey:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 245
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 249
    .end local v0           #currKey:[Ljava/lang/String;
    :goto_22
    return-object v2

    .line 241
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_26
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public getVideoPauseState()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public setExtras([Ljava/lang/String;)V
    .registers 2
    .parameter "extraparams"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, newExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setVideoPauseState(I)V
    .registers 2
    .parameter "videoPauseState"

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_8

    .line 234
    :goto_3
    return-void

    .line 232
    :pswitch_4
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    goto :goto_3

    .line 229
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    .line 257
    const-string v3, ""

    .local v3, extrasResult:Ljava/lang/String;
    const-string v8, ""

    .local v8, localSrvAbility:Ljava/lang/String;
    const-string v9, ""

    .line 258
    .local v9, peerSrvAbility:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v12, :cond_26

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_e
    if-ge v4, v6, :cond_26

    aget-object v10, v0, v4

    .line 260
    .local v10, s:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 264
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_26
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    if-eqz v12, :cond_90

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .local v0, arr$:[Lcom/android/internal/telephony/ServiceStatus;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    move v5, v4

    .end local v0           #arr$:[Lcom/android/internal/telephony/ServiceStatus;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_2f
    if-ge v5, v6, :cond_90

    aget-object v11, v0, v5

    .line 266
    .local v11, srv:Lcom/android/internal/telephony/ServiceStatus;
    if-eqz v11, :cond_8c

    .line 267
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_8c

    .line 270
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    .local v1, arr$:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_6e
    if-ge v4, v7, :cond_8c

    aget-object v2, v1, v4

    .line 271
    .local v2, at:Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 265
    .end local v1           #arr$:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v2           #at:Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :cond_8c
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_2f

    .line 278
    .end local v5           #i$:I
    .end local v11           #srv:Lcom/android/internal/telephony/ServiceStatus;
    :cond_90
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    if-eqz v12, :cond_fa

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .restart local v0       #arr$:[Lcom/android/internal/telephony/ServiceStatus;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    move v5, v4

    .end local v0           #arr$:[Lcom/android/internal/telephony/ServiceStatus;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_99
    if-ge v5, v6, :cond_fa

    aget-object v11, v0, v5

    .line 280
    .restart local v11       #srv:Lcom/android/internal/telephony/ServiceStatus;
    if-eqz v11, :cond_f6

    .line 281
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 283
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_f6

    .line 284
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    .restart local v1       #arr$:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_d8
    if-ge v4, v7, :cond_f6

    aget-object v2, v1, v4

    .line 285
    .restart local v2       #at:Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 279
    .end local v1           #arr$:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v2           #at:Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :cond_f6
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_99

    .line 292
    .end local v5           #i$:I
    .end local v11           #srv:Lcom/android/internal/telephony/ServiceStatus;
    :cond_fa
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " videoPauseState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Local Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Peer Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
