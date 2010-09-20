# OutOfContext Plugin for Movable Type
# Author: Lift, code@studiolift.com
# Copyright (C) 2010 Lift

package OutOfContext::Tags;

use strict;

sub OutOfContext {
  my ($ctx, $args, $cond) = @_;

  # Remove context for this block
  local $ctx->{__stash}{entries}          = undef;
  local $ctx->{current_timestamp}         = undef;
  local $ctx->{current_timestamp_end}     = undef;
  local $ctx->{__stash}{category}         = undef;
  local $ctx->{__stash}{archive_category} = undef;

  # Process wrapped content with blank context
  defined(my $out = $ctx->slurp($args, $cond)) or return;
  return $out;
}

1;
