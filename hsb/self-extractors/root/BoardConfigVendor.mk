# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_STEM := hsb/BoardConfigPartial.mk

-include vendor/intel_apache/$(LOCAL_STEM)
-include vendor/intel_bpl/$(LOCAL_STEM)
-include vendor/intel_mit/$(LOCAL_STEM)
-include vendor/intel_obl/$(LOCAL_STEM)
-include vendor/intel_oblsla/$(LOCAL_STEM)
-include vendor/intel_oblumg/$(LOCAL_STEM)

