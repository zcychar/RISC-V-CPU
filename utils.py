from assassyn.frontend import *


def write_1hot(arrs, idx_val, payload):
    """writes to a list of 1-deep RegArrays, similar to 1-hot gating.

    Args:
        arrs (list(Array)): RegArray list
        idx_val (Bits(32)): index
        payload (Value):
    """
    for i, arr in enumerate(arrs):
        with Condition(idx_val == Bits(32)(i)):
            arr[0] = payload


def read_mux(arrs, idx_val):
    """reads from a list of 1-deep RegArrays.

    Args:
        arrs (list(Array)): RegArray list
        idx_val (Bits(32)): index

    Note: this function is NOT SAFE against index out-of-bound
    """
    return idx_val.case({Bits(32)(i): arrs[i][0] for i, arr in enumerate(arrs)} | {None: arrs[0][0]})


class Logger:
    """
    A wrapper around the assassyn log function that allows enabling/disabling logging.
    """
    def __init__(self, enabled=True):
        self.enabled = enabled

    def __call__(self, fmt, *args):
        if self.enabled:
            log(fmt, *args)

    def set_enabled(self, enabled):
        self.enabled = enabled

FetcherLogEnabled = False
DecoderLogEnabled = False
ALULogEnabled = False
RSLogEnabled = False
ROBLogEnabled = False
LSQLogEnabled = False
BPULogEnabled = False
