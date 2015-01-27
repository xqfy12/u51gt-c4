.class Landroid/server/BluetoothAdapterStateMachine$Switching;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Switching"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$Switching;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Switching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    const v7, 0x111002e

    const/16 v4, 0x66

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", message.obj = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x1

    .line 498
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    .line 593
    .end local v0           #retValue:Z
    :cond_0
    :goto_0
    return v0

    .line 501
    .restart local v0       #retValue:Z
    :sswitch_0
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 503
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->setPairable()V

    .line 504
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->initBluetoothAfterTurningOn()V

    .line 505
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 506
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xc

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 509
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->runBluetooth()V

    goto :goto_0

    .line 513
    :sswitch_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x69

    #calls: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$5200(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 514
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 515
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 516
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$3200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$5300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 517
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->finishDisable()V

    .line 518
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->cleanupAfterFinishDisable()V

    .line 519
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$5400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 521
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mIsUserTurnOnWhenSwitching:Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$5500(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-ne v1, v5, :cond_1

    .line 522
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v3, "defer USER_TURN_ON message"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mIsUserTurnOnObject:Ljava/lang/Object;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5600(Landroid/server/BluetoothAdapterStateMachine;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$5700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 524
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsUserTurnOnWhenSwitching:Z
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5502(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    .line 525
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsUserTurnOnObject:Ljava/lang/Object;
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5602(Landroid/server/BluetoothAdapterStateMachine;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 532
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mDelayBroadcastStateOff:Z
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$3402(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    goto/16 :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 537
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v1, v6, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4600(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 541
    :cond_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v1, v4, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4600(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 547
    :sswitch_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x67

    #calls: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v1, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$5900(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 548
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 549
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x69

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 552
    :sswitch_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 554
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Devices failed to disconnect, reseting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 556
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 562
    :sswitch_4
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6200(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 563
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$6300(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 565
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Devices failed to power down, reseting..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 567
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$6500(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 574
    :sswitch_5
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 575
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "USER_TURN_ON when Switching..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsUserTurnOnWhenSwitching:Z
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$5502(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    .line 577
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #setter for: Landroid/server/BluetoothAdapterStateMachine;->mIsUserTurnOnObject:Ljava/lang/Object;
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$5602(Landroid/server/BluetoothAdapterStateMachine;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 587
    :cond_4
    :sswitch_6
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$6600(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 498
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x34 -> :sswitch_2
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x67 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6b -> :sswitch_6
    .end sparse-switch
.end method
