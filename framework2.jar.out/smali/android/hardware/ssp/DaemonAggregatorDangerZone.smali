.class Landroid/hardware/ssp/DaemonAggregatorDangerZone;
.super Landroid/hardware/ssp/ADaemonAggregator;
.source "DaemonAggregatorDangerZone.java"


# instance fields
.field private mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;->clearVar()V

    goto :goto_0
.end method

.method protected notifyDangerZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getAggregatorObserver()Landroid/hardware/ssp/DaemonObserverAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/DaemonObserverAggregator;->notifyDangerZoneContext(Landroid/hardware/ssp/DaemonContexts$SSPDangerZone;)V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->clear()V

    .line 38
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_DANGER_ZONE:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    sget-object v3, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-static {}, Landroid/hardware/ssp/DaemonManagerDataRate;->getInstance()Landroid/hardware/ssp/DaemonManagerDataRate;

    move-result-object v4

    sget-object v5, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    invoke-virtual {v4, v5}, Landroid/hardware/ssp/DaemonManagerDataRate;->getSensorRate(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/ssp/DaemonManagerRunner;->startRunner(Landroid/hardware/ssp/DaemonConstants$SSPRunners;Landroid/hardware/ssp/ADaemonRunner;Landroid/hardware/ssp/DaemonConstants$SSPAggregators;I)Landroid/hardware/ssp/ADaemonRunner;

    move-result-object v0

    check-cast v0, Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    iput-object v0, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    .line 46
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunnerContext;->addContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    .line 50
    :cond_0
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->start()V

    .line 51
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->stop()V

    .line 62
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonAggregator;->isRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getContextRunner()Landroid/hardware/ssp/DaemonRunnerContext;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunnerContext;->removeContextRunner(Landroid/hardware/ssp/ADaemonRunnerContext;)V

    .line 69
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerRunner;->getInstance()Landroid/hardware/ssp/DaemonManagerRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonConstants$SSPAggregators;->DANGERZONE:Landroid/hardware/ssp/DaemonConstants$SSPAggregators;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonAggregatorDangerZone;->mDangerZoneRunner:Landroid/hardware/ssp/DaemonRunnerContextDangerZone;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ssp/DaemonManagerRunner;->stopRunner(Landroid/hardware/ssp/DaemonConstants$SSPAggregators;Landroid/hardware/ssp/ADaemonRunner;)V

    goto :goto_0
.end method
