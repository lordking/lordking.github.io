---
title: 领域 Domain
tags: DDD词汇/DDD模式语言
status: 积压
priority: 1
layout: default
directory: ddd/glossary
nav_order: 1
parent: 领域 Domain
publish: domain
---

# 领域 Domain

## 1 参考资料

>给出具体的参考书籍和引用链接。如果书籍有购买地址或在线阅读地址，给出具体链接地址。如果是书中某一章节，必须标明是哪个章节。且如果书籍存在在线阅读的链接，应给出对应章节的具体链接地址。
>
> - 名称(链接)

- 《领域驱动设计》-运用领域模型
- 《Domain-Driven Design Reference》-定义

## 2 什么是领域

> 有关该名词的定义。
> 
> 名词（English name），....具体概念描述....

领域是指一个知识、影响、或活动的范围，用户应用一个软件的问题区域就是该软件的领域。

很多情况下，软件的领域与计算机本身关系不大，而与人们活动、知识、物质世界的范围有关。

## 3 影响（必须）

> 描述使用该模式产生的影响，可能是正面积极的影响，有时同时会存在负面的影响。

开发团队必须识别软件相关的领域范围的知识范围。

## 4 上下文
> 以图形方式描述当前模式与其他模式之间的关系

- 关联

​	描述模式A与其他相关模式，如模式B存在关联关系。一般会用在当谈到模式A的时候，共同出现模式B等其他模式的概念，此时它们将共同解决某一主题范围内的问题。

```mermaid
flowchart 
	subgraph 主题
	direction LR
		模式A --- |关联| 模式B
	end
```

- 输入

​	运用模式A的成果，作为模式B的输入。一般认为模式B是模式A的下一个步骤

```mermaid
flowchart
	subgraph 主题
		direction LR
		模式A --->|模式A的成果| 模式B
	end
```

- 使用

​	模式A在方案中使用到模式B

```mermaid
flowchart
	subgraph 主题
		direction LR
		模式A -.-> |使用| 模式B
	end
```

- 组合

​	模式B和模式C共同组成模式A

```mermaid
flowchart
	subgraph 主题
		direction LR
		模式B & 模式C ---o 模式A
  end
```

- 实现

​	模式A可以使用模式B实现

```mermaid
flowchart
	subgraph 标题
		direction LR
		模式B --->|实现| 模式A
	end
```

## 5 应用指南

> 描述使用该模式过程中需要注意的提示要点，或出现的常见问题及其对应的解决方案。

这里填写...

## 6 样例（必须）

> 描述具体实践的样例，其中包含代码、具体方案。

- 一个机票预定系统的领域
- 一个会计程序的金融领域

## 7 批注

> 学习过程的思考笔记

这里填写...

