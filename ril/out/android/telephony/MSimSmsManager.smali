.class public Landroid/telephony/MSimSmsManager;
.super Ljava/lang/Object;
.source "MSimSmsManager.java"


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field protected static isMultiSimEnabled:Z

.field private static final sInstance:Landroid/telephony/MSimSmsManager;


# instance fields
.field private final DEFAULT_SUB:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Landroid/telephony/MSimSmsManager;

    invoke-direct {v0}, Landroid/telephony/MSimSmsManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimSmsManager;->sInstance:Landroid/telephony/MSimSmsManager;

    .line 50
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/telephony/MSimSmsManager;->isMultiSimEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/MSimSmsManager;->DEFAULT_SUB:I

    .line 435
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_28

    .line 709
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 710
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_28

    .line 711
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 713
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_25

    .line 714
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 716
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_25

    .line 717
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 722
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_28
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/MSimSmsManager;
    .registers 1

    .prologue
    .line 430
    sget-object v0, Landroid/telephony/MSimSmsManager;->sInstance:Landroid/telephony/MSimSmsManager;

    return-object v0
.end method

.method public static getSmsCapacityOnIcc(I)I
    .registers 4
    .parameter "subscription"

    .prologue
    .line 815
    const/4 v1, -0x1

    .line 817
    .local v1, ret:I
    :try_start_1
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 818
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_11

    .line 819
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/msim/ISmsMSim;->getSmsCapacityOnIcc(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 824
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_11
    :goto_11
    return v1

    .line 821
    :catch_12
    move-exception v2

    goto :goto_11
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .registers 12
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "subscription"

    .prologue
    .line 453
    const/4 v6, 0x0

    .line 455
    .local v6, success:Z
    if-nez p2, :cond_b

    .line 456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_b
    :try_start_b
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 460
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_23

    .line 461
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->copyMessageToIccEf(Ljava/lang/String;I[B[BI)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_22} :catch_24

    move-result v6

    .line 468
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_23
    :goto_23
    return v6

    .line 464
    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public deleteMessageFromIcc(II)Z
    .registers 10
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 483
    const/4 v6, 0x0

    .line 484
    .local v6, success:Z
    const/16 v1, 0xaf

    new-array v4, v1, [B

    .line 485
    .local v4, pdu:[B
    const/4 v1, -0x1

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 488
    :try_start_9
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 489
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_20

    .line 490
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_21

    move-result v6

    .line 497
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_20
    :goto_20
    return v6

    .line 493
    :catch_21
    move-exception v1

    goto :goto_20
.end method

.method public disableCellBroadcast(II)Z
    .registers 6
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 609
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 610
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_11

    .line 611
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->disableCellBroadcast(II)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 618
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_11
    :goto_11
    return v1

    .line 614
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public disableCellBroadcastRange(III)Z
    .registers 8
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 679
    const/4 v1, 0x0

    .line 681
    .local v1, success:Z
    if-ge p2, p1, :cond_b

    .line 682
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 685
    :cond_b
    :try_start_b
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 686
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1b

    .line 687
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/ISmsMSim;->disableCellBroadcastRange(III)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1c

    move-result v1

    .line 694
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1b
    :goto_1b
    return v1

    .line 690
    :catch_1c
    move-exception v2

    goto :goto_1b
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_a

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_a
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(II)Z
    .registers 6
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 574
    const/4 v1, 0x0

    .line 577
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 578
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_11

    .line 579
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->enableCellBroadcast(II)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 586
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_11
    :goto_11
    return v1

    .line 582
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public enableCellBroadcastRange(III)Z
    .registers 8
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 643
    .local v1, success:Z
    if-ge p2, p1, :cond_b

    .line 644
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_b
    :try_start_b
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 648
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1b

    .line 649
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/ISmsMSim;->enableCellBroadcastRange(III)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1c

    move-result v1

    .line 656
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1b
    :goto_1b
    return v1

    .line 652
    :catch_1c
    move-exception v2

    goto :goto_1b
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .registers 5
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    const/4 v1, 0x0

    .line 544
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_1
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 545
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_15

    .line 546
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getAllMessagesFromIccEf(Ljava/lang/String;I)Ljava/util/List;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_1a

    move-result-object v1

    .line 553
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_15
    :goto_15
    invoke-static {v1, p1}, Landroid/telephony/MSimSmsManager;->createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 549
    :catch_1a
    move-exception v2

    goto :goto_15
.end method

.method getImsSmsFormat(I)Ljava/lang/String;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 761
    const-string v0, "unknown"

    .line 763
    .local v0, format:Ljava/lang/String;
    :try_start_2
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 764
    .local v1, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_12

    .line 765
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getImsSmsFormat(I)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    move-result-object v0

    .line 770
    .end local v1           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_12
    :goto_12
    return-object v0

    .line 767
    :catch_13
    move-exception v2

    goto :goto_12
.end method

.method public getPreferredSmsSubscription()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :try_start_2
    const-string v3, "isms_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 782
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getPreferredSmsSubscription()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_13

    move-result v2

    .line 786
    :goto_10
    return v2

    .line 783
    :catch_11
    move-exception v0

    .line 784
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_10

    .line 785
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 786
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method isImsSmsSupported(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    .line 736
    const/4 v0, 0x0

    .line 738
    .local v0, boSupported:Z
    :try_start_1
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 739
    .local v1, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_11

    .line 740
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->isImsSmsSupported(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 745
    .end local v1           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_11
    :goto_11
    return v0

    .line 742
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public isSMSPromptEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 797
    const/4 v1, 0x0

    .line 799
    .local v1, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :try_start_2
    const-string v3, "isms_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 800
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ISmsMSim;->isSMSPromptEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_13

    move-result v2

    .line 804
    :goto_10
    return v2

    .line 801
    :catch_11
    move-exception v0

    .line 802
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_10

    .line 803
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 804
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 19
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originatorPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_e
    if-eqz p5, :cond_13

    array-length v1, p5

    if-nez v1, :cond_1b

    .line 409
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_1b
    :try_start_1b
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 414
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_41

    .line 415
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    const v2, 0xffff

    and-int v5, p4, v2

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_41} :catch_42

    .line 422
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_41
    :goto_41
    return-void

    .line 419
    :catch_42
    move-exception v1

    goto :goto_41
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 17
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_e
    if-eqz p4, :cond_13

    array-length v1, p4

    if-nez v1, :cond_1b

    .line 356
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_1b
    :try_start_1b
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 361
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3a

    .line 362
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3a} :catch_3b

    .line 369
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3a
    :goto_3a
    return-void

    .line 366
    :catch_3b
    move-exception v1

    goto :goto_3a
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 15
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_10
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_20

    .line 218
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_20
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_40

    .line 223
    :try_start_26
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 225
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3f

    .line 226
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3f} :catch_6c

    .line 245
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3f
    :goto_3f
    return-void

    .line 234
    :cond_40
    const/4 v5, 0x0

    .line 235
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 236
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_50

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_50

    .line 237
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 239
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_50
    if-eqz p5, :cond_5e

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 240
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 242
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5e
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_3f

    .line 230
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_6c
    move-exception v1

    goto :goto_3f
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZII)V
    .registers 22
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "priority"
    .parameter "isExpectMore"
    .parameter "validityPeriod"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZII)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 287
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_e
    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1f

    .line 290
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_1f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_49

    .line 295
    :try_start_26
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 297
    .local v1, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_48

    .line 298
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZII)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_48} :catch_83

    .line 318
    .end local v1           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_48
    :goto_48
    return-void

    .line 306
    :cond_49
    const/4 v6, 0x0

    .line 307
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 308
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5c

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5c

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 311
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_5c
    if-eqz p5, :cond_6d

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6d

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 314
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6d
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V

    goto :goto_48

    .line 302
    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_83
    move-exception v2

    goto :goto_48
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 15
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1c
    :try_start_1c
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 97
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_35

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_35} :catch_36

    .line 104
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_35
    :goto_35
    return-void

    .line 101
    :catch_36
    move-exception v1

    goto :goto_35
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    .registers 21
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "priority"
    .parameter "isExpectMore"
    .parameter "validityPeriod"
    .parameter "subscription"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1c
    :try_start_1c
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 151
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_3d

    .line 152
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3d} :catch_3e

    .line 159
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_3d
    :goto_3d
    return-void

    .line 156
    :catch_3e
    move-exception v1

    goto :goto_3d
.end method

.method public updateMessageOnIcc(II[BI)Z
    .registers 12
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "subscription"

    .prologue
    .line 516
    const/4 v6, 0x0

    .line 519
    .local v6, success:Z
    :try_start_1
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 520
    .local v0, iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_19

    .line 521
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result v6

    .line 528
    .end local v0           #iccISms:Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_19
    :goto_19
    return v6

    .line 524
    :catch_1a
    move-exception v1

    goto :goto_19
.end method
