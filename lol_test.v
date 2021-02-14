module lol

fn test_lol() {
	config := lol.Config { lol.Style.normal }
	lol := lol.lol{ config }
	assert lol.string("Hello World") == '\x1b[38;2;140;237;24mH\x1b[39m\x1b[38;2;153;230;17me\x1b[39m\x1b[38;2;165;222;11ml\x1b[39m\x1b[38;2;177;213;7ml\x1b[39m\x1b[38;2;188;204;3mo\x1b[39m\x1b[38;2;199;193;1m \x1b[39m\x1b[38;2;209;182;1mW\x1b[39m\x1b[38;2;219;170;1mo\x1b[39m\x1b[38;2;227;158;3mr\x1b[39m\x1b[38;2;234;145;6ml\x1b[39m\x1b[38;2;241;133;10md\x1b[39m'
}
