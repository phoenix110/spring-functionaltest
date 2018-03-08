/*
 * Copyright 2014-2018 NTT Corporation.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jp.co.ntt.fw.spring.functionaltest.app.vldt;

import javax.validation.constraints.Pattern;

public class OsCommandInjectionForm {
    @Pattern(regexp = "batch0\\d\\.sh")
    private String cmdStr;

    @Pattern(regexp = "[\\w=_]+")
    private String arg;

    public String getCmdStr() {
        return cmdStr;
    }

    public void setCmdStr(String cmdStr) {
        this.cmdStr = cmdStr;
    }

    public String getArg() {
        return arg;
    }

    public void setArg(String arg) {
        this.arg = arg;
    }

}
