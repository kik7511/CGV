package com.cgv.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception;
}