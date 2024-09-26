<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables></variables>
  <block type="mqttcallback" id="KwBS4y|0LVp5J!P;x.6h" x="137" y="12">
    <statement name="NAME1">
      <block type="controls_if" id="(nWz.m3X_QS^G6{c/O_Q">
        <value name="IF0">
          <shadow type="logic_boolean" id="?/l6LW^|p~E)E*3@{JiI">
            <field name="BOOL">TRUE</field>
          </shadow>
          <block type="logic_compare" id="{Y.8i/=Kt-fdx`4ND8u,">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="mqtttopic" id="N*gc]pKI7TOWX7DskbVT"></block>
            </value>
            <value name="B">
              <block type="text" id="WaV_JDkny1`Z}t6i5@uF">
                <field name="TEXT">Security</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="controls_if" id="pXURcZ[WHNqKZAHQ|}~*">
            <value name="IF0">
              <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                <field name="BOOL">TRUE</field>
              </shadow>
              <block type="logic_compare" id="=e8[/cKp:tDHjoSL^6vJ">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="mqttmessage" id="oo9)sA#Nt9]Fq=D1#*u-"></block>
                </value>
                <value name="B">
                  <block type="text" id="k*Q}S)s.UCMSjz/Nf)^x">
                    <field name="TEXT">1</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO0">
              <block type="oled_page" id="S9yqCn|;aJuElLL34(oz">
                <statement name="oled_statement">
                  <block type="oled_textprint1" id="jWApz$gzM==GgGXd~7Qr">
                    <value name="x">
                      <shadow type="math_number" id="b/)O2V8[g%37?@)7O7vG">
                        <field name="NUM">0</field>
                      </shadow>
                    </value>
                    <value name="y">
                      <shadow type="math_number" id="?pTyjkm%W~MG.iMj|*x|">
                        <field name="NUM">24</field>
                      </shadow>
                    </value>
                    <value name="text">
                      <shadow type="text3" id="1I^6V]JhWMY+vTM3|z!s">
                        <field name="TEXT">Please enter new password (4 digits):</field>
                      </shadow>
                    </value>
                  </block>
                </statement>
                <next>
                  <block type="arduinodelay1" id="j*gmp1X;x2~wIaBtdWaA">
                    <value name="value">
                      <shadow type="math_number" id="1l@`blqZ}Z1@Bh/#X@o%">
                        <field name="NUM">1</field>
                      </shadow>
                    </value>
                  </block>
                </next>
              </block>
            </statement>
            <next>
              <block type="controls_if" id="x51o!H[$$H]Z{2YcVg=l">
                <value name="IF0">
                  <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                    <field name="BOOL">TRUE</field>
                  </shadow>
                  <block type="logic_compare" id="I!oEzdB`|(VOJ9lmd,k^">
                    <field name="OP">EQ</field>
                    <value name="A">
                      <block type="mqttmessage" id="~wQh7kQ%OjB=9k41X0oC"></block>
                    </value>
                    <value name="B">
                      <block type="text" id="BXs+*dmWRw{gHrMMo?d*">
                        <field name="TEXT">2</field>
                      </block>
                    </value>
                  </block>
                </value>
                <statement name="DO0">
                  <block type="oled_page" id="Z=)rK_K4n7!eyV;J-vbx">
                    <statement name="oled_statement">
                      <block type="oled_textprint1" id="Xo#W!#2p9_X]RL_jY=q9">
                        <value name="x">
                          <shadow type="math_number" id="lrBeJ8dfaJ5G6E,09=2L">
                            <field name="NUM">0</field>
                          </shadow>
                        </value>
                        <value name="y">
                          <shadow type="math_number" id="rEou7!a3/CPO7=q7FtGz">
                            <field name="NUM">24</field>
                          </shadow>
                        </value>
                        <value name="text">
                          <shadow type="text3" id="Ax|8.ROg?nLg28_V^Dcx">
                            <field name="TEXT">Please enter password:</field>
                          </shadow>
                        </value>
                      </block>
                    </statement>
                    <next>
                      <block type="arduinodelay1" id="26ZYlx19f@g[2nue~W]z">
                        <value name="value">
                          <shadow type="math_number" id="8hQha9y2iWq!D8?e8)uY">
                            <field name="NUM">1</field>
                          </shadow>
                        </value>
                      </block>
                    </next>
                  </block>
                </statement>
                <next>
                  <block type="controls_if" id="=Ki#sLu@8.t%z0(1Od=M">
                    <value name="IF0">
                      <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                        <field name="BOOL">TRUE</field>
                      </shadow>
                      <block type="logic_compare" id="TnAgpQ|4txq%qtC.+V$s">
                        <field name="OP">EQ</field>
                        <value name="A">
                          <block type="mqttmessage" id="c%4asa6/am?HkhaUm]49"></block>
                        </value>
                        <value name="B">
                          <block type="text" id="xD_(AF1v]+~?`~98==9L">
                            <field name="TEXT">3</field>
                          </block>
                        </value>
                      </block>
                    </value>
                    <statement name="DO0">
                      <block type="oled_page" id="Q~AE:+/uonfl*`b@=93R">
                        <statement name="oled_statement">
                          <block type="oled_textprint1" id="b!GdXlCG8}N5}s7bwl[,">
                            <value name="x">
                              <shadow type="math_number" id="qBIg%)Olt@vp7xxTVY48">
                                <field name="NUM">0</field>
                              </shadow>
                            </value>
                            <value name="y">
                              <shadow type="math_number" id="iL12.KsGW|0QU}j^Y$0Q">
                                <field name="NUM">24</field>
                              </shadow>
                            </value>
                            <value name="text">
                              <shadow type="text3" id="sW8wlv/02hdWKXAW=WT)">
                                <field name="TEXT">Please set a new password (4 digits):</field>
                              </shadow>
                            </value>
                          </block>
                        </statement>
                        <next>
                          <block type="arduinodelay1" id="IA8dDL{%Nyq~MuCBD7ZO">
                            <value name="value">
                              <shadow type="math_number" id="rFA{F|O)c4?]8(|)dAnB">
                                <field name="NUM">1</field>
                              </shadow>
                            </value>
                          </block>
                        </next>
                      </block>
                    </statement>
                    <next>
                      <block type="controls_if" id="XRxYhm$dxR11loq^-Nb-">
                        <value name="IF0">
                          <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                            <field name="BOOL">TRUE</field>
                          </shadow>
                          <block type="logic_compare" id="^4BT4E/,4ZRT2C#H|P!.">
                            <field name="OP">EQ</field>
                            <value name="A">
                              <block type="mqttmessage" id="t2v?pNsT{!nXPUn=ThM["></block>
                            </value>
                            <value name="B">
                              <block type="text" id="]]cE=YjS2W-`2g@YWY6R">
                                <field name="TEXT">4</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO0">
                          <block type="oled_page" id="HAQKznnlek}}-0eu3V5R">
                            <statement name="oled_statement">
                              <block type="oled_textprint1" id="AIf~1ss/lM~$N%9%fRgF">
                                <value name="x">
                                  <shadow type="math_number" id="eq;C/CKAm;Z4FpZncy}a">
                                    <field name="NUM">0</field>
                                  </shadow>
                                </value>
                                <value name="y">
                                  <shadow type="math_number" id="8bSCV45o_JL.^pxqbont">
                                    <field name="NUM">24</field>
                                  </shadow>
                                </value>
                                <value name="text">
                                  <shadow type="text3" id="scgFraSf,9m2|/Qd_[0j">
                                    <field name="TEXT">New password set.</field>
                                  </shadow>
                                </value>
                              </block>
                            </statement>
                            <next>
                              <block type="arduinodelay1" id="wP^`s~+_p?sp8G2^BrHx">
                                <value name="value">
                                  <shadow type="math_number" id="e9`SQ3g2|:OxC(3pK)oi">
                                    <field name="NUM">1</field>
                                  </shadow>
                                </value>
                              </block>
                            </next>
                          </block>
                        </statement>
                        <next>
                          <block type="controls_if" id="{|a]yc5eOyBAUq[7GmB%">
                            <value name="IF0">
                              <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                                <field name="BOOL">TRUE</field>
                              </shadow>
                              <block type="logic_compare" id="?Ba%4{WVShw5;6,S;S$Z">
                                <field name="OP">EQ</field>
                                <value name="A">
                                  <block type="mqttmessage" id="5)k:r_lGFop!:9uqQ]iC"></block>
                                </value>
                                <value name="B">
                                  <block type="text" id="6Sx%CqyT3p}yH;RYY8=J">
                                    <field name="TEXT">5</field>
                                  </block>
                                </value>
                              </block>
                            </value>
                            <statement name="DO0">
                              <block type="oled_page" id="23xW}1D2XA}MY1+L$dWc">
                                <statement name="oled_statement">
                                  <block type="oled_textprint1" id="_L=cam~N7`{eEmnb($.E">
                                    <value name="x">
                                      <shadow type="math_number" id="TcZZ]Et^wB[:_fnj~PIE">
                                        <field name="NUM">0</field>
                                      </shadow>
                                    </value>
                                    <value name="y">
                                      <shadow type="math_number" id="Td@2p}^?MxkZHap%;4p@">
                                        <field name="NUM">24</field>
                                      </shadow>
                                    </value>
                                    <value name="text">
                                      <shadow type="text3" id="$)E3b!,}4.)r`h3v@FyZ">
                                        <field name="TEXT">Please enter password:</field>
                                      </shadow>
                                    </value>
                                  </block>
                                </statement>
                                <next>
                                  <block type="arduinodelay1" id="9uH3cKEwiV`|qe9;cMi?">
                                    <value name="value">
                                      <shadow type="math_number" id="(9r*_9n,w#sZ8jEWeL_N">
                                        <field name="NUM">1</field>
                                      </shadow>
                                    </value>
                                  </block>
                                </next>
                              </block>
                            </statement>
                            <next>
                              <block type="controls_if" id="^Qaa)fe[*5|:SlA6sbNw">
                                <value name="IF0">
                                  <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                                    <field name="BOOL">TRUE</field>
                                  </shadow>
                                  <block type="logic_compare" id="M9a2w*v{b8vEjmaOL;kN">
                                    <field name="OP">EQ</field>
                                    <value name="A">
                                      <block type="mqttmessage" id="A{,(qiH$iSx$k7Z{FM;d"></block>
                                    </value>
                                    <value name="B">
                                      <block type="text" id="NYWqp!=_{7)+DjJr;vMa">
                                        <field name="TEXT">6</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                                <statement name="DO0">
                                  <block type="oled_page" id="g(=^9XmFZhm.h|=c8y1Y">
                                    <statement name="oled_statement">
                                      <block type="oled_textprint1" id=",Qn0d//1#*fF3x%#rP]2">
                                        <value name="x">
                                          <shadow type="math_number" id="-^)-j[MUwEDji_82L~x8">
                                            <field name="NUM">0</field>
                                          </shadow>
                                        </value>
                                        <value name="y">
                                          <shadow type="math_number" id=";aFMG|k9/|TnOs*6pwkF">
                                            <field name="NUM">24</field>
                                          </shadow>
                                        </value>
                                        <value name="text">
                                          <shadow type="text3" id="(0!ihxG,orD*O`:1f`d8">
                                            <field name="TEXT">Password must be exactly 4 digits.</field>
                                          </shadow>
                                        </value>
                                        <next>
                                          <block type="oled_textprint1" id="t5zm#r4$C8e;*qwPY1G7">
                                            <value name="x">
                                              <shadow type="math_number" id="CNI4Vu*i2pm9SvmFHsLO">
                                                <field name="NUM">0</field>
                                              </shadow>
                                            </value>
                                            <value name="y">
                                              <shadow type="math_number" id="=AnM=JqG4xr=e`mx8j9Z">
                                                <field name="NUM">48</field>
                                              </shadow>
                                            </value>
                                            <value name="text">
                                              <shadow type="text3" id="T0iJdf6*2h@5HGJj/!Y]">
                                                <field name="TEXT">Please try again.</field>
                                              </shadow>
                                            </value>
                                          </block>
                                        </next>
                                      </block>
                                    </statement>
                                    <next>
                                      <block type="arduinodelay1" id="=3j+`GrSqQ0$|9-e-8k}">
                                        <value name="value">
                                          <shadow type="math_number" id="CK.SRb.B9Ux$UUMG8!Nt">
                                            <field name="NUM">1</field>
                                          </shadow>
                                        </value>
                                      </block>
                                    </next>
                                  </block>
                                </statement>
                                <next>
                                  <block type="controls_if" id="%W6{T.u.C]}zfxJ:ZR*Z">
                                    <value name="IF0">
                                      <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                                        <field name="BOOL">TRUE</field>
                                      </shadow>
                                      <block type="logic_compare" id="PG%egf#B1]%mP)TwMyXF">
                                        <field name="OP">EQ</field>
                                        <value name="A">
                                          <block type="mqttmessage" id="(}#3RG6ZU|UJL*cwi^T~"></block>
                                        </value>
                                        <value name="B">
                                          <block type="text" id="^=!z5B[2QE=xC-Bq4bn1">
                                            <field name="TEXT">7</field>
                                          </block>
                                        </value>
                                      </block>
                                    </value>
                                    <statement name="DO0">
                                      <block type="oled_page" id="8EzSddlHH#x,w@RAo8QP">
                                        <statement name="oled_statement">
                                          <block type="oled_textprint1" id="Cxm)t72|n}gT2*o-`G1k">
                                            <value name="x">
                                              <shadow type="math_number" id="g$M5q[fQ$CX4$}Q%+b]7">
                                                <field name="NUM">0</field>
                                              </shadow>
                                            </value>
                                            <value name="y">
                                              <shadow type="math_number" id="RmgKL_yGBwD$J|KF%G.a">
                                                <field name="NUM">24</field>
                                              </shadow>
                                            </value>
                                            <value name="text">
                                              <shadow type="text3" id="czfYMC#U/roerPNpGL#8">
                                                <field name="TEXT">Password Correct! :)</field>
                                              </shadow>
                                            </value>
                                          </block>
                                        </statement>
                                        <next>
                                          <block type="arduinodelay1" id="k!#[q)APE[5(qQcTV}eV">
                                            <value name="value">
                                              <shadow type="math_number" id="Z+K^D@SF#C5sfC62d/4d">
                                                <field name="NUM">1</field>
                                              </shadow>
                                            </value>
                                          </block>
                                        </next>
                                      </block>
                                    </statement>
                                    <next>
                                      <block type="controls_if" id="Hd-./2r^/L8y9Y@-KzfD">
                                        <value name="IF0">
                                          <shadow type="logic_boolean" id="S-+?gxl$+=ir`0~W@`5D">
                                            <field name="BOOL">TRUE</field>
                                          </shadow>
                                          <block type="logic_compare" id="i@ZMD-lO-CrDx%M$6e7!">
                                            <field name="OP">EQ</field>
                                            <value name="A">
                                              <block type="mqttmessage" id="g$kJdn%4..WH5rxsLQGG"></block>
                                            </value>
                                            <value name="B">
                                              <block type="text" id="8N9BXV!`Ipi2]Ik%3O:2">
                                                <field name="TEXT">8</field>
                                              </block>
                                            </value>
                                          </block>
                                        </value>
                                        <statement name="DO0">
                                          <block type="oled_page" id=";HIT0d%r5^fo#Q7mtt.t">
                                            <statement name="oled_statement">
                                              <block type="oled_textprint1" id="7tx4*Y@GM%-t3;46.;=k">
                                                <value name="x">
                                                  <shadow type="math_number" id=":6|y(]k@B5r4c+CKu*BE">
                                                    <field name="NUM">0</field>
                                                  </shadow>
                                                </value>
                                                <value name="y">
                                                  <shadow type="math_number" id="+0+P$P(`K.}AETK{TA0|">
                                                    <field name="NUM">24</field>
                                                  </shadow>
                                                </value>
                                                <value name="text">
                                                  <shadow type="text3" id="tXEg7!5NG.jR4IIEK;A-">
                                                    <field name="TEXT">Incorrect Password :(</field>
                                                  </shadow>
                                                </value>
                                              </block>
                                            </statement>
                                            <next>
                                              <block type="arduinodelay1" id="=7U(d{ke$`1Rr`f5VI52">
                                                <value name="value">
                                                  <shadow type="math_number" id="u8I`Ou+^VE9s%GFin:B;">
                                                    <field name="NUM">1</field>
                                                  </shadow>
                                                </value>
                                              </block>
                                            </next>
                                          </block>
                                        </statement>
                                      </block>
                                    </next>
                                  </block>
                                </next>
                              </block>
                            </next>
                          </block>
                        </next>
                      </block>
                    </next>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </statement>
      </block>
    </statement>
  </block>
  <block type="start" id="DV0vI84D4N#)C#90Rs?a" x="188" y="2462">
    <statement name="setup">
      <block type="simplewificonnectesp" id="5_?NH|1g1oh,TY=-`9$h">
        <value name="ssid">
          <shadow type="text3" id="ZG(T{NC(wG;MNn.;XP,U">
            <field name="TEXT">YUN</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="fm$22,or-*;d?h59(uh~">
            <field name="TEXT">stareblankly</field>
          </shadow>
        </value>
        <next>
          <block type="mqttsetup" id="Cn}rIIW3*:hP[@Yi:aqV">
            <value name="num1">
              <shadow type="text3" id="|Boy`wpSL`{1eAx4|r=C">
                <field name="TEXT">broker.mqttdashboard.com</field>
              </shadow>
            </value>
            <value name="port">
              <shadow type="math_number" id="{s#yoD9R!45.F,{GdZ4z">
                <field name="NUM">1883</field>
              </shadow>
            </value>
            <next>
              <block type="mqttsubscribe" id="N5qCnYm3:D?(Dby7[J;J">
                <value name="num1">
                  <shadow type="text3" id="uXo`3[KD]Cl+{2GPT4qP">
                    <field name="TEXT">Security</field>
                  </shadow>
                </value>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>