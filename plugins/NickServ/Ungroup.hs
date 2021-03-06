{- Copyright 2015 David Farrell <shokku.ra@gmail.com>

 - Licensed under the Apache License, Version 2.0 (the "License");
 - you may not use this file except in compliance with the License.
 - You may obtain a copy of the License at

 - http://www.apache.org/licenses/LICENSE-2.0

 - Unless required by applicable law or agreed to in writing, software
 - distributed under the License is distributed on an "AS IS" BASIS,
 - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 - See the License for the specific language governing permissions and
 - limitations under the License.
 -}

module NickServ.Ungroup where

import qualified Data.Map as M
import Arata.Types
import Ext.Help

exports = [CommandExport "nickserv" cmd]

cmd = (defaultCommand "UNGROUP" handler) { extensions = M.singleton (typeOf extHelp) (toDyn extHelp)}

extHelp = defaultExtHelp { short = "Removes your current nick from your account" }

handler src dst _ = return [NoticeAction dst src "TODO"]
