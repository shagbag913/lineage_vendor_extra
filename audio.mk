#
# Copyright (C) 2019 shagbag913
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PREBUILT_AUDIO_PATH := vendor/extra/prebuilt/media/audio

ALARMS := A_real_hoot Awaken Bounce Bright_morning Cuckoo_clock Drip Early_twilight Flow \
	Full_of_wonder Gallop Gentle_breeze Icicles Jump_start Loose_change Nudge Orbit Rise \
	Rolling_fog Spokes Sunshower Sway Wag

NOTIFICATIONS := Beginning Birdsong Chime Clink Coconuts Duet End_note Flick Gentle_gong Hey \
	Mallet Note Orders_up Ping Pipes Popcorn Shopkeeper Sticks_and_stones Strum Trill Tuneup \
	Tweeter Twinkle

RINGTONES := Beats Copycat Crackle Dance_party Early_bird Flutterby Hey_hey Hotline \
	Leaps_and_bounds Lollipop Lost_and_found Mash_up Monkey_around Romance Rrrring Schools_out \
	Shooting_star Spaceship Summer_night The_big_adventure Zen Zen_too

UI := Dock Effect_Tick KeypressDelete KeypressInvalid KeypressReturn KeypressSpacebar \
	KeypressStandard Lock Trusted Undock Unlock VideoRecord VideoStop audio_end audio_initiate \
	camera_click

PRODUCT_COPY_FILES += $(foreach f,$(ALARMS),\
	$(PREBUILT_AUDIO_PATH)/alarms/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(NOTIFICATIONS),\
	$(PREBUILT_AUDIO_PATH)/notifications/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(RINGTONES),\
	$(PREBUILT_AUDIO_PATH)/ringtones/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(UI),\
	$(PREBUILT_AUDIO_PATH)/ui/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/$(f).ogg)

# Default sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Shooting_star.ogg \
    ro.config.notification_sound=Mallet.ogg \
    ro.config.alarm_alert=Spokes.ogg
