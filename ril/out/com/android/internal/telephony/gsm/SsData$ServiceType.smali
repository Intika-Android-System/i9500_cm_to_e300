.class public final enum Lcom/android/internal/telephony/gsm/SsData$ServiceType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CFU"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_BUSY"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_NO_REPLY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_NOT_REACHABLE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_ALL"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CF_ALL_CONDITIONAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CLIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_CLIR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_COLP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_COLR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_WAIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAOC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAOIC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAOIC_EXC_HOME"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAIC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_BAIC_ROAMING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_ALL_BARRING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_OUTGOING_BARRING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    const-string v1, "SS_INCOMING_BARRING"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 33
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .registers 2
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0
.end method


# virtual methods
.method public isTypeBarring()Z
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isTypeCF()Z
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isTypeCW()Z
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTypeClip()Z
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTypeClir()Z
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTypeUnConditional()Z
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
