.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 505
    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 510
    const/4 v8, 0x0

    .line 511
    .local v8, retryCount:I
    const-string v9, "rild"

    .line 514
    .local v9, rilSocket:Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    .line 517
    .local v10, s:Landroid/net/LocalSocket;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_e4

    .line 518
    :cond_18
    sget-object v14, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v9, v14, v15
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1d} :catch_154

    .line 524
    :goto_1d
    :try_start_1d
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_f4
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_154

    .line 525
    .end local v10           #s:Landroid/net/LocalSocket;
    .local v11, s:Landroid/net/LocalSocket;
    :try_start_22
    new-instance v5, Landroid/net/LocalSocketAddress;

    sget-object v14, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v9, v14}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 527
    .local v5, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v11, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_1da
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2c} :catch_d2

    .line 560
    const/4 v8, 0x0

    .line 562
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v11, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 563
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Connected to \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v15, "qcomdsds"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/RIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_77

    .line 567
    const-string v12, "SUB1"

    .line 568
    .local v12, str:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_62} :catch_d2

    move-result-object v1

    .line 570
    .local v1, data:[B
    :try_start_63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    .line 571
    const-string v14, "RILJ"

    const-string v15, "Data sent!!"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_77} :catch_157
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_77} :catch_161
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_77} :catch_d2

    .line 579
    .end local v1           #data:[B
    .end local v12           #str:Ljava/lang/String;
    :cond_77
    :goto_77
    const/4 v6, 0x0

    .line 581
    .local v6, length:I
    :try_start_78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 586
    .local v4, is:Ljava/io/InputStream;
    :goto_82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v4, v14}, Lcom/android/internal/telephony/RIL;->access$200(Ljava/io/InputStream;[B)I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_89} :catch_187
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_89} :catch_1a8

    move-result v6

    .line 588
    if-gez v6, :cond_16b

    .line 610
    .end local v4           #is:Ljava/io/InputStream;
    :goto_8c
    :try_start_8c
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Disconnected from \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_b3} :catch_d2

    .line 616
    :try_start_b3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bc} :catch_1d7
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_bc} :catch_d2

    .line 620
    :goto_bc
    :try_start_bc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 621
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_d0} :catch_d2

    goto/16 :goto_3

    .line 625
    .end local v5           #l:Landroid/net/LocalSocketAddress;
    .end local v6           #length:I
    :catch_d2
    move-exception v13

    move-object v10, v11

    .line 626
    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v10       #s:Landroid/net/LocalSocket;
    .local v13, tr:Ljava/lang/Throwable;
    :goto_d4
    const-string v14, "RILJ"

    const-string v15, "Uncaught exception"

    invoke-static {v14, v15, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 631
    return-void

    .line 520
    .end local v13           #tr:Ljava/lang/Throwable;
    :cond_e4
    :try_start_e4
    sget-object v14, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v9, v14, v15
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_f2} :catch_154

    goto/16 :goto_1d

    .line 528
    :catch_f4
    move-exception v2

    .line 530
    .local v2, ex:Ljava/io/IOException;
    :goto_f5
    if-eqz v10, :cond_fa

    .line 531
    :try_start_f7
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_1d1
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_fa} :catch_154

    .line 540
    :cond_fa
    :goto_fa
    const/16 v14, 0x8

    if-ne v8, v14, :cond_12f

    .line 541
    :try_start_fe
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket after "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " times, continuing to retry silently"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_126} :catch_154

    .line 552
    :cond_126
    :goto_126
    const-wide/16 v14, 0xfa0

    :try_start_128
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12b
    .catch Ljava/lang/InterruptedException; {:try_start_128 .. :try_end_12b} :catch_1d4
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_12b} :catch_154

    .line 556
    :goto_12b
    add-int/lit8 v8, v8, 0x1

    .line 557
    goto/16 :goto_3

    .line 545
    :cond_12f
    if-lez v8, :cond_126

    const/16 v14, 0x8

    if-ge v8, v14, :cond_126

    .line 546
    :try_start_135
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket; retrying after timeout"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_153} :catch_154

    goto :goto_126

    .line 625
    .end local v2           #ex:Ljava/io/IOException;
    :catch_154
    move-exception v13

    goto/16 :goto_d4

    .line 572
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v1       #data:[B
    .restart local v5       #l:Landroid/net/LocalSocketAddress;
    .restart local v11       #s:Landroid/net/LocalSocket;
    .restart local v12       #str:Ljava/lang/String;
    :catch_157
    move-exception v2

    .line 573
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_158
    const-string v14, "RILJ"

    const-string v15, "IOException"

    invoke-static {v14, v15, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_77

    .line 574
    .end local v2           #ex:Ljava/io/IOException;
    :catch_161
    move-exception v3

    .line 575
    .local v3, exc:Ljava/lang/RuntimeException;
    const-string v14, "RILJ"

    const-string v15, "Uncaught exception "

    invoke-static {v14, v15, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_169
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_169} :catch_d2

    goto/16 :goto_77

    .line 593
    .end local v1           #data:[B
    .end local v3           #exc:Ljava/lang/RuntimeException;
    .end local v12           #str:Ljava/lang/String;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v6       #length:I
    :cond_16b
    :try_start_16b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 594
    .local v7, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 595
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v14, v7}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    .line 600
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_185} :catch_187
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_185} :catch_1a8

    goto/16 :goto_82

    .line 602
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #p:Landroid/os/Parcel;
    :catch_187
    move-exception v2

    .line 603
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_188
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket closed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 605
    .end local v2           #ex:Ljava/io/IOException;
    :catch_1a8
    move-exception v13

    .line 606
    .restart local v13       #tr:Ljava/lang/Throwable;
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uncaught exception read length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_188 .. :try_end_1cf} :catch_d2

    goto/16 :goto_8c

    .line 533
    .end local v5           #l:Landroid/net/LocalSocketAddress;
    .end local v6           #length:I
    .end local v11           #s:Landroid/net/LocalSocket;
    .end local v13           #tr:Ljava/lang/Throwable;
    .restart local v2       #ex:Ljava/io/IOException;
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_1d1
    move-exception v14

    goto/16 :goto_fa

    .line 553
    :catch_1d4
    move-exception v14

    goto/16 :goto_12b

    .line 617
    .end local v2           #ex:Ljava/io/IOException;
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v5       #l:Landroid/net/LocalSocketAddress;
    .restart local v6       #length:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :catch_1d7
    move-exception v14

    goto/16 :goto_bc

    .line 528
    .end local v5           #l:Landroid/net/LocalSocketAddress;
    .end local v6           #length:I
    :catch_1da
    move-exception v2

    move-object v10, v11

    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v10       #s:Landroid/net/LocalSocket;
    goto/16 :goto_f5
.end method
