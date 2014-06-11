#!/usr/bin/env perl

my $current_sink_id;
my %sink_states;

for my $line (`pactl list sinks`) {
    if ($line =~ /^\s*Sink\s+#\s*(\d+)\s*$/) {
        $current_sink_id = $1;
        print "DBG: $current_sink_id\n";
    } elsif ($line =~ /Mute:\s*(\w+)/) {
        next unless defined $current_sink_id;
        my $state = $1;
        if ($state =~ /yes/i) {
            $sink_states{$current_sink_id} = 0;
        } else {
            $sink_states{$current_sink_id} = 1;
        }
    }
}

while (my ($sink_id, $mute_state) = each %sink_states) {
    my $reverted = not $mute_state;
    print "pactl set-sink-mute $sink_id $mute_state";
    `pactl set-sink-mute $sink_id $mute_state`;
}

