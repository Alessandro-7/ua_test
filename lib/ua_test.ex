defmodule UaTest do
  def start() do
    ua_browser = [
      {"Opera Mini", "Opera/9.80 (J2ME/MIDP; Opera Mini/7.1.32052/29.3709; U; en) Presto/2.8.119 Version/11.10"},
      {"Android Browser", "Mozilla/5.0 (Linux; U; Android 4.4.4; pt-br; SM-G530H Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"},
      {"Firefox", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1"},
      {"Safari", "Mozilla/5.0 (iPhone; CPU iPhone OS 12_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1"},
      {"Yandex Browser", "Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 YaBrowser/18.3.1.1232 Yowser/2.5 Safari/537.36"},
      {"Opera", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 OPR/43.0.2442.991"},
      {"UC Browser", "Mozilla/5.0 (Linux; U; Android 8.1.0; zh-CN; EML-AL00 Build/HUAWEIEML-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 baidu.sogo.uc.UCBrowser/11.9.4.974 UWS/2.13.1.48 Mobile Safari/537.36 AliApp(DingTalk/4.5.11) com.alibaba.android.rimet/10487439 Channel/227200 language/zh-CN"},
      {"Internet Explorer", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)"},
      {"Chrome", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36"}
    ]
    ua_os = [
      {"Android", "Mozilla/5.0 (Linux; U; Android 2.2) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"},
      {"iOS", "Mozilla/5.0 (iPhone; CPU iPhone OS 13_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.1 Mobile/15E148 Safari/604.1"},
      {"Windows", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36"},
      {"Linux", "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a1) Gecko/20070308 Minefield/3.0a1"},
      {"Mac OSX", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.59.10 (KHTML, like Gecko) Version/5.1.9 Safari/534.59.10"},
      {"Symbian", "Opera/9.80 (S60; SymbOS; Opera Mobi/SYB-1204232254; U; en-GB) Presto/2.10.254 Version/12.00"},
      {"ChromeOS", "Mozilla/5.0 (X11; CrOS x86_64 12499.66.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.106 Safari/537.36"},
    ]
    pars_b(ua_browser)
    IO.puts("------------------------------------------------------------------\n")
    pars_o(ua_os)
    :ok
  end

  def parse(ua), do: Wootheex.parse(ua)

  defp pars_b(ua_list) do
    Enum.each(ua_list, fn {browser_ex, ua} ->
      {_, browser, _, _, _, _, _} = Wootheex.parse(ua)
      IO.inspect({browser_ex, browser})
      IO.puts(ua)
      IO.puts("")
    end)
  end

  defp pars_o(ua_list) do
    Enum.each(ua_list, fn {os_ex, ua} ->
      {_, _, _, _, os, _, _} = Wootheex.parse(ua)
      IO.inspect({os_ex, os})
      IO.puts(ua)
      IO.puts("")
    end)
  end
end
