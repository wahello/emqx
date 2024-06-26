%%--------------------------------------------------------------------
%% Copyright (c) 2022-2024 EMQ Technologies Co., Ltd. All Rights Reserved.
%%--------------------------------------------------------------------

-record(buffer, {
    since :: emqx_bridge_s3_aggregator:timestamp(),
    until :: emqx_bridge_s3_aggregator:timestamp(),
    seq :: non_neg_integer(),
    filename :: file:filename(),
    fd :: file:io_device() | undefined,
    max_records :: pos_integer() | undefined,
    cnt_records :: {ets:tab(), _Counter} | undefined
}).

-type buffer() :: #buffer{}.
