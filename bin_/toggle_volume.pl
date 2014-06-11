#!/usr/bin/env perl

my @sinks;

for my $line (`pactl list short sinks`) {
    push @sinks, $1 if $line =~ /^(\d+)/;
}

for my $id (@sinks) {
    `pactl set-sink-volume $id -- @ARGV`;
}

