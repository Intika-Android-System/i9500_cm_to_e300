.class public Lcom/android/internal/telephony/SamsungExynos4RIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungExynos4RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field static final RIL_REQUEST_ACCESS_PHONEBOOK_ENTRY:I = 0x2719

.field static final RIL_REQUEST_ACTIVATE_DATA_CALL:I = 0x2731

.field static final RIL_REQUEST_CALL_DEFLECTION:I = 0x271b

.field static final RIL_REQUEST_CDMA_GET_DATAPROFILE:I = 0x2739

.field static final RIL_REQUEST_CDMA_GET_SYSTEMPROPERTIES:I = 0x273b

.field static final RIL_REQUEST_CDMA_SET_DATAPROFILE:I = 0x273a

.field static final RIL_REQUEST_CDMA_SET_SYSTEMPROPERTIES:I = 0x273c

.field static final RIL_REQUEST_CHANGE_SIM_PERSO:I = 0x2732

.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_REQUEST_DIAL_VIDEO_CALL:I = 0x271a

.field static final RIL_REQUEST_ENTER_SIM_PERSO:I = 0x2733

.field static final RIL_REQUEST_GET_BARCODE_NUMBER:I = 0x2727

.field static final RIL_REQUEST_GET_CELL_BROADCAST_CONFIG:I = 0x2712

.field static final RIL_REQUEST_GET_LINE_ID:I = 0x2723

.field static final RIL_REQUEST_GET_MANUFACTURE_DATE_NUMBER:I = 0x2726

.field static final RIL_REQUEST_GET_PHONEBOOK_ENTRY:I = 0x2718

.field static final RIL_REQUEST_GET_PHONEBOOK_STORAGE_INFO:I = 0x2717

.field static final RIL_REQUEST_GET_PREFERRED_NETWORK_LIST:I = 0x2743

.field static final RIL_REQUEST_GET_SERIAL_NUMBER:I = 0x2725

.field static final RIL_REQUEST_GET_STOREAD_MSG_COUNT:I = 0x2721

.field static final RIL_REQUEST_GET_TIME_INFO:I = 0x2734

.field static final RIL_REQUEST_HANGUP_VT:I = 0x2744

.field static final RIL_REQUEST_LOCK_INFO:I = 0x271e

.field static final RIL_REQUEST_MODEM_HANGUP:I = 0x2740

.field static final RIL_REQUEST_OMADM_CLIENT_START_SESSION:I = 0x2737

.field static final RIL_REQUEST_OMADM_SEND_DATA:I = 0x2738

.field static final RIL_REQUEST_OMADM_SERVER_START_SESSION:I = 0x2736

.field static final RIL_REQUEST_OMADM_SETUP_SESSION:I = 0x2735

.field static final RIL_REQUEST_PS_ATTACH:I = 0x272f

.field static final RIL_REQUEST_PS_DETACH:I = 0x2730

.field static final RIL_REQUEST_READ_SMS_FROM_SIM:I = 0x271c

.field static final RIL_REQUEST_SEND_ENCODED_USSD:I = 0x2715

.field static final RIL_REQUEST_SEND_SMS_COUNT:I = 0x273d

.field static final RIL_REQUEST_SEND_SMS_MSG:I = 0x273e

.field static final RIL_REQUEST_SEND_SMS_MSG_READ_STATUS:I = 0x273f

.field static final RIL_REQUEST_SET_LINE_ID:I = 0x2724

.field static final RIL_REQUEST_SET_PDA_MEMORY_STATUS:I = 0x2716

.field static final RIL_REQUEST_SET_PREFERRED_NETWORK_LIST:I = 0x2742

.field static final RIL_REQUEST_SET_SIM_POWER:I = 0x2741

.field static final RIL_REQUEST_SIM_AUTH:I = 0x272e

.field static final RIL_REQUEST_SIM_CLOSE_CHANNEL:I = 0x272c

.field static final RIL_REQUEST_SIM_OPEN_CHANNEL:I = 0x272b

.field static final RIL_REQUEST_SIM_TRANSMIT_BASIC:I = 0x272a

.field static final RIL_REQUEST_SIM_TRANSMIT_CHANNEL:I = 0x272d

.field static final RIL_REQUEST_STK_SIM_INIT_EVENT:I = 0x2722

.field static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_BOOTSTRAP:I = 0x2728

.field static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_NAF:I = 0x2729

.field static final RIL_REQUEST_USIM_PB_CAPA:I = 0x271d

.field static final RIL_UNSOL_AM:I = 0x2b02

.field static final RIL_UNSOL_DATA_SUSPEND_RESUME:I = 0x2b04

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_DHA_STATE:I = 0x2b0b

.field static final RIL_UNSOL_DUN:I = 0x2b12

.field static final RIL_UNSOL_DUN_CALL_STATUS:I = 0x2afc

.field static final RIL_UNSOL_DUN_PIN_CONTROL_SIGNAL:I = 0x2b03

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_IPV6_ADDR:I = 0x2b0e

.field static final RIL_UNSOL_MIP_CONNECT_STATUS:I = 0x2b18

.field static final RIL_UNSOL_NWK_INIT_DISC_REQUEST:I = 0x2b0f

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_OMADM_SEND_DATA:I = 0x2b11

.field static final RIL_UNSOL_RELEASE_COMPLETE_MESSAGE:I = 0x2af9

.field static final RIL_UNSOL_RESPONSE_HANDOVER:I = 0x2b0d

.field static final RIL_UNSOL_RTS_INDICATION:I = 0x2b10

.field static final RIL_UNSOL_SAP:I = 0x2b05

.field static final RIL_UNSOL_SIM_SMS_STORAGE_AVAILALE:I = 0x2b07

.field static final RIL_UNSOL_STK_CALL_CONTROL_RESULT:I = 0x2afb

.field static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa

.field static final RIL_UNSOL_SYSTEM_REBOOT:I = 0x2b13

.field static final RIL_UNSOL_TWO_MIC_STATE:I = 0x2b0a

.field static final RIL_UNSOL_UART:I = 0x2b0c

.field static final RIL_UNSOL_UTS_GETSMSCOUNT:I = 0x2b15

.field static final RIL_UNSOL_UTS_GETSMSMSG:I = 0x2b16

.field static final RIL_UNSOL_UTS_GET_UNREAD_SMS_STATUS:I = 0x2b17

.field static final RIL_UNSOL_VOICE_PRIVACY_CHANGED:I = 0x2b14

.field static final RIL_UNSOL_WB_AMR_STATE:I = 0x2b09


# instance fields
.field private mCatProCmdBuffer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 126
    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .parameter "request"

    .prologue
    .line 130
    packed-switch p0, :pswitch_data_c

    .line 132
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 131
    :pswitch_8
    const-string v0, "DIAL_EMERGENCY"

    goto :goto_7

    .line 130
    nop

    :pswitch_data_c
    .packed-switch 0x2720
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 352
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 353
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungExynos4RIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 373
    :goto_9
    return-void

    .line 357
    :cond_a
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 358
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    if-nez p3, :cond_4a

    .line 362
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_9

    .line 364
    :cond_4a
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_22
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 8
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 378
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 381
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 388
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .registers 12
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungExynos4RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 148
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_34

    .line 149
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 345
    .end local v3           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_33
    :goto_33
    return-object v3

    .line 154
    .restart local v3       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_34
    const/4 v2, 0x0

    .line 156
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_9d

    .line 158
    :cond_3d
    :try_start_3d
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_3cc

    .line 283
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_5d} :catch_5d

    .line 285
    :catch_5d
    move-exception v5

    .line 288
    .local v5, tr:Ljava/lang/Throwable;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exception, possible invalid RIL response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_33

    .line 293
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v6, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 294
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 164
    .end local v5           #tr:Ljava/lang/Throwable;
    :sswitch_99
    :try_start_99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_5d

    move-result-object v2

    .line 303
    .end local v2           #ret:Ljava/lang/Object;
    :cond_9d
    :goto_9d
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v7, :pswitch_data_582

    .line 316
    :cond_a2
    :goto_a2
    :pswitch_a2
    if-eqz v0, :cond_388

    .line 317
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_58c

    .line 333
    :cond_a9
    :goto_a9
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    goto :goto_33

    .line 165
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_ad
    :try_start_ad
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 166
    :sswitch_b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 167
    :sswitch_b7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 168
    :sswitch_bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 169
    :sswitch_c1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 170
    :sswitch_c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 171
    :sswitch_cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 172
    :sswitch_d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 173
    :sswitch_d5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 174
    :sswitch_da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 175
    :sswitch_df
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 176
    :sswitch_e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 177
    :sswitch_e9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 179
    :sswitch_ee
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_105

    .line 180
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_105

    .line 181
    const-string v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 182
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 185
    :cond_105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 186
    goto :goto_9d

    .line 188
    :sswitch_10a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 189
    :sswitch_10f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 190
    :sswitch_114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 191
    :sswitch_119
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_9d

    .line 192
    :sswitch_11e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 193
    :sswitch_124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 194
    :sswitch_12a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 195
    :sswitch_130
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 196
    :sswitch_136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 197
    :sswitch_13c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 198
    :sswitch_142
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 199
    :sswitch_148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 200
    :sswitch_14e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 201
    :sswitch_154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 202
    :sswitch_15a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 203
    :sswitch_160
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 204
    :sswitch_166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 205
    :sswitch_16c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 206
    :sswitch_172
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 207
    :sswitch_178
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 208
    :sswitch_17e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 209
    :sswitch_184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 210
    :sswitch_18a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 211
    :sswitch_190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 212
    :sswitch_196
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 213
    :sswitch_19c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 214
    :sswitch_1a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 215
    :sswitch_1a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 216
    :sswitch_1ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 217
    :sswitch_1b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 218
    :sswitch_1ba
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 219
    :sswitch_1c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 220
    :sswitch_1c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 221
    :sswitch_1cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 222
    :sswitch_1d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 223
    :sswitch_1d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 224
    :sswitch_1de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 225
    :sswitch_1e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 226
    :sswitch_1ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 227
    :sswitch_1f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 228
    :sswitch_1f6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 229
    :sswitch_1fc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 230
    :sswitch_202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 231
    :sswitch_208
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 232
    :sswitch_20e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 233
    :sswitch_214
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 234
    :sswitch_21a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 235
    :sswitch_220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 236
    :sswitch_226
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 237
    :sswitch_22c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 238
    :sswitch_232
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 239
    :sswitch_238
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 240
    :sswitch_23e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 241
    :sswitch_244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 242
    :sswitch_24a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 243
    :sswitch_250
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 244
    :sswitch_256
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 245
    :sswitch_25c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 246
    :sswitch_262
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 247
    :sswitch_268
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 248
    :sswitch_26e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 249
    :sswitch_274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 250
    :sswitch_27a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 251
    :sswitch_280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 252
    :sswitch_286
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 253
    :sswitch_28c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 254
    :sswitch_292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 255
    :sswitch_298
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 256
    :sswitch_29e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 257
    :sswitch_2a4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 258
    :sswitch_2aa
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 259
    :sswitch_2b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 260
    :sswitch_2b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 261
    :sswitch_2bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 262
    :sswitch_2c2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 263
    :sswitch_2c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 264
    :sswitch_2ce
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 265
    :sswitch_2d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 266
    :sswitch_2da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 267
    :sswitch_2e0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 268
    :sswitch_2e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 269
    :sswitch_2ec
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 270
    :sswitch_2f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 271
    :sswitch_2f8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 272
    :sswitch_2fe
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 273
    :sswitch_304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 274
    :sswitch_30a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 275
    :sswitch_310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 276
    :sswitch_316
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 277
    :sswitch_31c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 278
    :sswitch_322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 279
    :sswitch_328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 280
    :sswitch_32e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_9d

    .line 281
    :sswitch_334
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_337
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_337} :catch_5d

    move-result-object v2

    goto/16 :goto_9d

    .line 306
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_33a
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_a2

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 311
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_a2

    .line 323
    :sswitch_361
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_a9

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 328
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_a9

    .line 337
    :cond_388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 340
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_33

    .line 341
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 342
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_33

    .line 158
    :sswitch_data_3cc
    .sparse-switch
        0x1 -> :sswitch_99
        0x2 -> :sswitch_ad
        0x3 -> :sswitch_b2
        0x4 -> :sswitch_b7
        0x5 -> :sswitch_bc
        0x6 -> :sswitch_c1
        0x7 -> :sswitch_c6
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_d0
        0xa -> :sswitch_d5
        0xb -> :sswitch_df
        0xc -> :sswitch_e4
        0xd -> :sswitch_e9
        0xe -> :sswitch_ee
        0xf -> :sswitch_10a
        0x10 -> :sswitch_10f
        0x11 -> :sswitch_114
        0x12 -> :sswitch_119
        0x13 -> :sswitch_11e
        0x14 -> :sswitch_124
        0x15 -> :sswitch_12a
        0x16 -> :sswitch_130
        0x17 -> :sswitch_136
        0x18 -> :sswitch_13c
        0x19 -> :sswitch_142
        0x1a -> :sswitch_148
        0x1b -> :sswitch_14e
        0x1c -> :sswitch_154
        0x1d -> :sswitch_15a
        0x1e -> :sswitch_160
        0x1f -> :sswitch_166
        0x20 -> :sswitch_16c
        0x21 -> :sswitch_172
        0x22 -> :sswitch_178
        0x23 -> :sswitch_17e
        0x24 -> :sswitch_184
        0x25 -> :sswitch_18a
        0x26 -> :sswitch_190
        0x27 -> :sswitch_196
        0x28 -> :sswitch_19c
        0x29 -> :sswitch_1a2
        0x2a -> :sswitch_1a8
        0x2b -> :sswitch_1ae
        0x2c -> :sswitch_1b4
        0x2d -> :sswitch_1ba
        0x2e -> :sswitch_1c0
        0x2f -> :sswitch_1c6
        0x30 -> :sswitch_1cc
        0x31 -> :sswitch_1d2
        0x32 -> :sswitch_1d8
        0x33 -> :sswitch_1de
        0x34 -> :sswitch_1e4
        0x35 -> :sswitch_1ea
        0x36 -> :sswitch_1f0
        0x37 -> :sswitch_1f6
        0x38 -> :sswitch_1fc
        0x39 -> :sswitch_202
        0x3a -> :sswitch_208
        0x3b -> :sswitch_20e
        0x3c -> :sswitch_214
        0x3d -> :sswitch_21a
        0x3e -> :sswitch_220
        0x3f -> :sswitch_226
        0x40 -> :sswitch_22c
        0x41 -> :sswitch_232
        0x42 -> :sswitch_238
        0x43 -> :sswitch_23e
        0x44 -> :sswitch_244
        0x45 -> :sswitch_24a
        0x46 -> :sswitch_250
        0x47 -> :sswitch_256
        0x48 -> :sswitch_25c
        0x49 -> :sswitch_262
        0x4a -> :sswitch_268
        0x4b -> :sswitch_26e
        0x4c -> :sswitch_274
        0x4d -> :sswitch_27a
        0x4e -> :sswitch_280
        0x4f -> :sswitch_286
        0x50 -> :sswitch_28c
        0x51 -> :sswitch_292
        0x52 -> :sswitch_298
        0x53 -> :sswitch_29e
        0x54 -> :sswitch_2a4
        0x55 -> :sswitch_2aa
        0x56 -> :sswitch_2e0
        0x57 -> :sswitch_2b0
        0x58 -> :sswitch_2b6
        0x59 -> :sswitch_2bc
        0x5a -> :sswitch_2c2
        0x5b -> :sswitch_2c8
        0x5c -> :sswitch_2ce
        0x5d -> :sswitch_2d4
        0x5e -> :sswitch_2da
        0x5f -> :sswitch_2e6
        0x60 -> :sswitch_2ec
        0x61 -> :sswitch_2f2
        0x62 -> :sswitch_2f8
        0x63 -> :sswitch_30a
        0x64 -> :sswitch_2fe
        0x65 -> :sswitch_304
        0x66 -> :sswitch_310
        0x67 -> :sswitch_316
        0x68 -> :sswitch_31c
        0x69 -> :sswitch_322
        0x6a -> :sswitch_328
        0x6b -> :sswitch_32e
        0x6c -> :sswitch_334
        0x2720 -> :sswitch_da
    .end sparse-switch

    .line 303
    :pswitch_data_582
    .packed-switch 0x3
        :pswitch_33a
        :pswitch_a2
        :pswitch_33a
    .end packed-switch

    .line 317
    :sswitch_data_58c
    .sparse-switch
        0x2 -> :sswitch_361
        0x4 -> :sswitch_361
        0x6 -> :sswitch_361
        0x7 -> :sswitch_361
        0x2b -> :sswitch_361
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .registers 8
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 394
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .local v1, response:I
    packed-switch v1, :pswitch_data_2c

    .line 414
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 421
    :goto_12
    return-void

    .line 398
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 399
    .local v2, ret:Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 401
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_29

    .line 402
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_12

    .line 408
    :cond_29
    iput-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    goto :goto_12

    .line 396
    :pswitch_data_2c
    .packed-switch 0x3f5
        :pswitch_13
    .end packed-switch
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 425
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 429
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    .line 431
    :cond_1a
    return-void
.end method
