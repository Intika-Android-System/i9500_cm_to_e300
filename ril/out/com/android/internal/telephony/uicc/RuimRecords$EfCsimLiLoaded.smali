.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimLiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    const-string v0, "EF_CSIM_LI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const/16 v6, 0x68

    const/16 v5, 0x20

    const/16 v4, 0x65

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    #setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_d6

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_fa

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v5, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 294
    :goto_3a
    add-int/lit8 v0, v0, 0x2

    goto :goto_12

    .line 296
    :pswitch_3d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    goto :goto_3a

    .line 297
    :pswitch_52
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x66

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    goto :goto_3a

    .line 298
    :pswitch_69
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v4, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    goto :goto_3a

    .line 299
    :pswitch_7e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x6a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    goto :goto_3a

    .line 300
    :pswitch_95
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x6b

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    goto :goto_3a

    .line 301
    :pswitch_ac
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    const/16 v2, 0x7a

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v2

    goto/16 :goto_3a

    .line 302
    :pswitch_c2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    aput-byte v6, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v4, v1, v2

    goto/16 :goto_3a

    .line 307
    :cond_d6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_LI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 308
    return-void

    .line 295
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_52
        :pswitch_69
        :pswitch_7e
        :pswitch_95
        :pswitch_ac
        :pswitch_c2
    .end packed-switch
.end method
