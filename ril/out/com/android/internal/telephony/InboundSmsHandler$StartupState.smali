.class Lcom/android/internal/telephony/InboundSmsHandler$StartupState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartupState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 271
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_18

    .line 286
    :pswitch_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 274
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #calls: Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    goto :goto_7

    .line 278
    :pswitch_e
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #calls: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    goto :goto_7

    .line 271
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
