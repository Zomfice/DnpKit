#!/usr/bin/env python3
# encoding:utf-8

# import fileinput
import os
import sys
import getopt
HELP_STRING = """ 
              注解: 私有库需要改私有仓库的sources_arr(要验证/提交的仓库数组),specs(仓库名称),推送代码固定推送到线上origin仓库的master分支
              chomd 777 ./PodScript.py
              ./PodScript.py --pr/--pu -c
              --pr 私有库后面无需跟参数
              --pu 官方库后面无需跟参数
              -a pus commit以及tag使用相同的标识
              -c push commit
              -t push tag标签
              --push 只push到git仓库
              --repo 只推送到仓库
              --ck 只校验
              --tag 只推送tag
              none 调用原始写法需要一步步传入命令
              """

#终端命令调用
def osSystem(sm):
    if os.system(sm) != 0:
        print("\033[1;31m")
        print("\n报错啦: '%s'\n" % sm)
        print("\033[0m")
        sys.exit()

#私有仓库发布
class PrivatePod:
    commit_str = ""
    tag_str = ""
    opts = []
    specs = "" #私有库仓库名称
    #远程私有仓库地址 远程官方仓库地址
    sources_arr = [
        "https://github.com/Zomfice/DnpKit.git",
        "https://github.com/CocoaPods/Specs"
    ]
    sources = "" # 远程仓库地址 主动拼接 不需要处理
    def __init__(self,opts):
        self.sources = ",".join(self.sources_arr)
        self.opts = opts

    def argumentParsing(self):
        for op, value in self.opts:
            if op == "-c":
                self.commit_str = value
            elif op == "-t":
                self.tag_str = value
            elif op == "-a":
                self.commit_str = 'add code for ' + value
                self.tag_str = value
            elif op == "--push":
                self.commit_str = value
                self.push(False)
                sys.exit()
            elif op == "--repo":
                self.repo_push(False)
                sys.exit()
            elif op == "--ck":
                self.check(False)
                sys.exit()
            elif op == "--tag":
                self.tag_str = value
                self.push_tag(False)
                sys.exit()
        print(self.commit_str)
        print(self.tag_str)
        if len(self.commit_str) != 0 or len(self.tag_str) != 0:
            self.all_cmd()
            sys.exit()
        else:
            self.cmd()

    #解析传入的参数
    def privatePod(self):
        self.argumentParsing()

    #推送到git origin master分支
    def push(self,hasNext):
        # osSystem("git br")
        # osSystem("git br -a")
        local_list = list(os.popen("git branch"))

        onLine_list = list(os.popen("git branch -a"))
        local_br = ""
        onLine_br = ""
        for a in local_list:
            if "*" in a:
                local_br = a.replace("* ", "")
                local_br = local_br.replace("\n", "")
                break

        st = os.popen("git status").read()
        if "nothing to commit, working tree clean" in st:
            print("\033[1;31m")
            print("没有新代码需要提交")
            print("\033[0m")
            sys.exit()
        cm = ""
        if len(self.commit_str) != 0:
            cm = self.commit_str
        else:
            cm = input("commit: ")
        add = "git add ."
        cm = "git commit -m '%s'" % cm
        pull = "git pull origin %s" % onLine_br
        push = "git push origin %s:master" % (local_br)
        osSystem(add)
        osSystem(cm)
        osSystem(pull)
        osSystem(push)
        self.nextCmd(hasNext)

    #推送tag到 origin
    def push_tag(self,hasNext):
        print("tag")
        tag = ""
        if len(self.tag_str) != 0:
            tag = self.tag_str
        else:
            tag = input("tag: ")
        # os.system()
        # os.system()
        osSystem("git tag %s" % tag)
        osSystem("git push --tags")
        self.nextCmd(hasNext)
        return

    #仓库提交
    def repo_push(self,hasNext):
        # pod repo push O2Specs KWWorkRecordComponent.podspec  --allow-warnings
        # print("repo")
        dir = os.getcwd()
        ilist = os.listdir(dir)
        podspec = ""
        print(dir, ilist)
        for i in ilist:
            if i.endswith(".podspec"):
                print(ilist)
                podspec = i
                print(podspec)
                break
        #pod repo push DNRepo ZLBaseComponent.podspec  --allow-warnings
        # --verbose --sources='http://120.55.72.192/ios/DNSpecs.git,https://github.com/CocoaPods/Specs.git'
        if len(self.sources_arr) != 0 :
            repo_push_str = "pod repo push %s %s --allow-warnings --verbose --use-libraries --sources=%s" % (
                self.specs, podspec, self.sources)
        else:
            repo_push_str = "pod repo push %s %s --allow-warnings --verbose --use-libraries" % (
                self.specs, podspec)
        osSystem(repo_push_str)
        self.nextCmd(hasNext)
        return

    # 仓库校验
    def check(self,hasNext):
        if len(self.sources_arr) != 0 :
            sm = "pod lib lint --sources='%s' --allow-warnings --verbose --use-libraries" % self.sources
        else:
            sm = "pod lib lint --allow-warnings --verbose --use-libraries"
        osSystem(sm)
        self.nextCmd(hasNext)
        return

    #走正常的pod提交 验证 打tag 推送到私有仓库的逻辑
    def all_cmd(self):
        self.check(False)
        self.push(False)
        self.push_tag(False)
        self.repo_push(False)
        pass

    #调用下一个命令
    def nextCmd(self,hasNext):
        if hasNext == True:
            self.cmd()

    #调用命令
    def cmd(self):
        command = input("CMD: ")
        print("command: %s" % command)
        if command == "push":
            self.push(True)
        elif command == "tag":
            self.push_tag(True)
        elif command == "exit":
            self.sys.exit(True)
        elif command == "repo":
            self.repo_push(True)
        elif command == "check":
            self.check(True)
        elif command == "all":
            self.all_cmd()
        else:
            print("请输入:'push','tag','repo','check','exit'")
            self.cmd()
        return
# 官方库发布
class PublicPod(PrivatePod):
    opts = []
    def __int__(self,opts):
        self.opts = opts
    def publicPod(self):
        self.argumentParsing()

    #仓库提交
    def repo_push(self,hasNext):
        # pod trunk push xxxx.podspec
        # print("repo")
        dir = os.getcwd()
        ilist = os.listdir(dir)
        podspec = ""
        print(dir, ilist)
        for i in ilist:
            if i.endswith(".podspec"):
                print(ilist)
                podspec = i
                print(podspec)
                break
        repo_push_str = "pod trunk push %s %s --allow-warnings --verbose --use-libraries" % (
            self.specs, podspec)
        osSystem(repo_push_str)
        self.nextCmd(hasNext)
        return

    # 仓库校验
    def check(self,hasNext):
        sm = "pod spec lint --verbose --allow-warnings"
        osSystem(sm)
        self.nextCmd(hasNext)
        return

def _privatePod(opts):
    # print(opts)
    privatePod = PrivatePod(opts)
    privatePod.privatePod()

def _publicPod(opts):
    publicPod = PublicPod(opts)
    publicPod.publicPod()

def _printHelp():
    print(HELP_STRING)

def main(argv):
    # pr 私有库
    # pu 公开库
    try:
        opts, args = getopt.getopt(argv, "-h:-a:-c:-t:", ["pr", "pu","push=","repo","ck","tag="])
    except getopt.GetoptError:
        print ("===")
        _printHelp()
        sys.exit(2)

    if len(opts) > 0:
        opt_name, opt_value = opts[0]
        if opt_name == "--pr":
            _privatePod(opts[1:])
        elif opt_name == "--pu":
            _publicPod(opts[1:])
        else:
            _printHelp()
    else:
        _printHelp()

if __name__ == '__main__':
    main(sys.argv[1:])
