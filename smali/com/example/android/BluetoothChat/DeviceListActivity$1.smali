.class Lcom/example/android/BluetoothChat/DeviceListActivity$1;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/BluetoothChat/DeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/DeviceListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/DeviceListActivity$1;->this$0:Lcom/example/android/BluetoothChat/DeviceListActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/example/android/BluetoothChat/DeviceListActivity$1;->this$0:Lcom/example/android/BluetoothChat/DeviceListActivity;

    # getter for: Lcom/example/android/BluetoothChat/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/example/android/BluetoothChat/DeviceListActivity;->access$0(Lcom/example/android/BluetoothChat/DeviceListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 162
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x11

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/example/android/BluetoothChat/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/example/android/BluetoothChat/DeviceListActivity$1;->this$0:Lcom/example/android/BluetoothChat/DeviceListActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/example/android/BluetoothChat/DeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object v3, p0, Lcom/example/android/BluetoothChat/DeviceListActivity$1;->this$0:Lcom/example/android/BluetoothChat/DeviceListActivity;

    invoke-virtual {v3}, Lcom/example/android/BluetoothChat/DeviceListActivity;->finish()V

    .line 172
    return-void
.end method
