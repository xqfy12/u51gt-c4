.class Landroid/server/BluetoothService$4;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2418
    iput-object p1, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2420
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2421
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1602(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2427
    :cond_0
    :goto_0
    return-void

    .line 2422
    .restart local p2
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2423
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1702(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 2424
    .restart local p2
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2425
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 2429
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2430
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1602(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2431
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2432
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1702(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 2433
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2434
    iget-object v0, p0, Landroid/server/BluetoothService$4;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method
