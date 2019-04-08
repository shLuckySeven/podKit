#
# Be sure to run `pod lib lint podKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'podKit'#私有库名称（就是你的项目名）
  s.version          = '0.0.1' #版本号，怎么写随你，但是主流的写法一般都是0.0.1d开始第一版本
  s.summary          = 'podKit'#写成你的私有库名即可

  # 注意：以下3行，是让你写私有库的描述，切记这个3行花里胡哨的摆放不要动，不然后续操作会出错，我都是直接把它删了，15、16、17 都删掉
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

                       #这里写一个你的主页地址，或者远程私有仓库（github账号下，创建私有仓库，把地址贴过来）
  s.homepage         = 'https://github.com/shLuckySeven/podKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  #这里的内容一般是自己填充的个人github的信息，如果没有自动填充，这里自己填写下
  s.author           = { 'shLuckySeven' => 'shuhuan329@163.com' }
  # 默认给填好，看下信息即可，一般不需要改动，还是你的远程私有仓库地址
  s.source           = { :git => 'https://github.com/shLuckySeven/podKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.frameworks   = 'Foundation'
  s.platform     = :ios
  s.requires_arc = true
  
  #这个地方是目录设置
  s.subspec 'ClassA' do |ss|
      ss.requires_arc = true
      ss.source_files = 'podKit/ClassA/*'
  end
  
#  s.subspec 'ClassB' do |ss|
#      ss.requires_arc = true
#      ss.source_files = 'podKit/ClassB/*'#引用该路径：podKit/CalssB/下的所有文件
#      ss.dependency 'podKit/ClassA'#这个地方，其实是ClassB引用ClassA的话，才需要
#  end
  #其实还有很多的其他的，我都删了，关于spec的具体教程，本业上面，有个https://guides.cocoapods.org/syntax/podspec.html，去看看就行了，百度也能搜到很多
end
