-- Filename: RemoteHelp.lua
-- Author: Dennis Grzegorzewski, Paul V. Galvin Libary, Illinois Institute of Technology
-- Version: 1.0
-- Description: Creates a tab labeled Remote Help on the ILLiad main form that creates a browser to display a web page that lists all the processes in the Interlibrary Loan department that can be accomplished remotely.

-- Declare and initialize variables.

local interfaceMngr = nil;
local remoteHelpForm = {};
remoteHelpForm.Form = nil;
remoteHelpForm.Browser = nil;
remoteHelpForm.RibbonPage = nil;
local settings = {};
settings.HelpLocation = GetSetting("Help Location");

-- Functions.

-- This function holds the main program.
function Init()

  interfaceMngr = GetInterfaceManager();

  -- Call CreateForm to create a new form,
  -- with the following parameters (string formName, string category).
  remoteHelpForm.Form = interfaceMngr:CreateForm("Remote Help", "Script");

  -- Call CreateBrowser to create a browser and an associated ribbon,
  -- with the following parameters (string name, string label, string ribbonPageName).
  remoteHelpForm.Browser = remoteHelpForm.Form:CreateBrowser("Remote Help", "Remote Help", "Remote Help");

  -- Hide the text label.
  remoteHelpForm.Browser.TextVisible = false;

  -- Call Show to display the form.
  remoteHelpForm.Form:Show();

  -- Open to ILL Help in browser.
  remoteHelpForm.Browser:Navigate(GetSetting("Help Location"));

end

--[[
Lua License
http://www.lua.org/license.html

Lua is free software distributed under the terms of the MIT license reproduced below. Lua may be used for any purpose,
including commercial purposes, at absolutely no cost. No paperwork, no royalties, no GNU-like "copyleft" restrictions,
either. Just download it and use it. Lua is certified Open Source software. Its license is compatible with GPL.
Lua is not in the public domain and PUC-Rio keeps its copyright.

The spirit of the Lua license is that you are free to use Lua for any purpose at no cost without having to ask us.
The only requirement is that if you do use Lua, then you should give us credit by including the copyright notice somewhere
in your product or its documentation. A nice, but optional, way to give us further credit is to include a Lua logo
and a link to our site in a web page for your product.

The Lua language is entirely designed, implemented, and maintained by a team at PUC-Rio in Brazil.
The implementation is not derived from licensed software.

    Copyright © 1994–2012 Lua.org, PUC-Rio.

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
	associated documentation files (the "Software"), to deal in the Software without restriction,
	including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
	and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
	subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies
	or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
	INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
	OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Before Lua 5.0, Lua used its own license, which were very close to the zlib license and others, but not quite the same.
Check the source distribution for the exact license text for each version before Lua 5.0. Nevertheless,
if you wish to use those old versions, you may hereby assume that they have all been re-licensed under the MIT license.

Last update: Thu Jan 19 08:20:43 BRST 2012
--]]