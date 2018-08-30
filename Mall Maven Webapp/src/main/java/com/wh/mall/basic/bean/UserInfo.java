package com.wh.mall.basic.bean;


import java.io.Serializable;
import java.util.Date;

/**
 * 用户信息.
 *
 * @author lip
 */
public class UserInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private int id;
    /**
     * 登录名.
     */
    private String username;
    /**
     * 密码.
     */
    private String password;
    /**
     * 人员类型
     */
    private String personType;
    /**
     * 状态. 0-尚未初始化 1-正常
     */
    private int status;
    /**
     * 类型.  
     */
    private String type;
    /**
     * 配置——皮肤.
     */
    private String skin;
    /**
     * 配置——固定导航栏.
     */
    private boolean navbarFixed;
    /**
     * 配置——固定菜单栏.
     */
    private boolean menuFixed;
    /**
     * 配置——固定位置信息.
     */
    private boolean breadcrumbFixed;
    /**
     * 配置——窄屏.
     */
    private boolean petty=false;
    /**
     * 添加时间
     */
    private Date addTime;
    /**
     * 绑定手机号
     */
    private String linkTel;
    
//    private String position;
//    
//    private String companyType;
//
//    private String workNum;
//
//    private Integer lineType;
//    
//    private String countyFranchiseesId;
    
	/**
	 * 公司id
	 */
	private String companyId;

	/**
	 * 公司名称
	 */
	private String companyName;

	/**
	 * 角色id
	 */
	private String roleId;

	/**
	 * 角色名称
	 */
	private String roleName;
	/**
	 * 角色名称
	 */
	private String createTime;
	/**
	 * 头像
	 */
	private String headImg;

	/**
	 * 公司id获取
	 * 
	 * @return 公司id
	 */
	public String getCompanyId() {
		return companyId;
	}

	/**
	 * 公司id设定
	 * 
	 * @param companyId 公司id
	 */
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	/**
	 * 公司名称获取
	 * 
	 * @return 公司名称
	 */
	public String getCompanyName() {
		return companyName;
	}

	/**
	 * 公司名称设定
	 * 
	 * @param companyName 公司名称
	 */
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	/**
	 * 角色id获取
	 * 
	 * @return 角色id
	 */
	public String getRoleId() {
		return roleId;
	}

	/**
	 * 角色id设定
	 * 
	 * @param roleId 角色id
	 */
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	/**
	 * 角色名称获取
	 * 
	 * @return 角色名称
	 */
	public String getRoleName() {
		return roleName;
	}

	/**
	 * 角色名称设定
	 * 
	 * @param roleName 角色名称
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * 登录名.
     *
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 登录名.
     *
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
    /**
     * 密码.
     *
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * 密码.
     *
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 状态. 0-尚未初始化 1-正常
     *
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * 状态. 0-尚未初始化 1-正常
     *
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * 用户类型. 9-系统内置用户.
     *
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * 用户类型. 9-系统内置用户.
     *
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 配置——皮肤.
     *
     * @return the skin
     */
    public String getSkin() {
        return skin;
    }

    /**
     * 配置——皮肤.
     *
     * @param skin the skin to set
     */
    public void setSkin(String skin) {
        this.skin = skin;
    }

    /**
     * 配置——固定导航栏.
     *
     * @return the navbarFixed
     */
    public boolean isNavbarFixed() {
        return navbarFixed;
    }

    /**
     * 配置——固定导航栏.
     *
     * @param navbarFixed the navbarFixed to set
     */
    public void setNavbarFixed(boolean navbarFixed) {
        this.navbarFixed = navbarFixed;
    }

    /**
     * 配置——固定菜单栏.
     *
     * @return the menuFixed
     */
    public boolean isMenuFixed() {
        return menuFixed;
    }

    /**
     * 配置——固定菜单栏.
     *
     * @param menuFixed the menuFixed to set
     */
    public void setMenuFixed(boolean menuFixed) {
        this.menuFixed = menuFixed;
    }

    /**
     * 配置——固定位置信息.
     *
     * @return the breadcrumbFixed
     */
    public boolean isBreadcrumbFixed() {
        return breadcrumbFixed;
    }

    /**
     * 配置——固定位置信息.
     *
     * @param breadcrumbFixed the breadcrumbFixed to set
     */
    public void setBreadcrumbFixed(boolean breadcrumbFixed) {
        this.breadcrumbFixed = breadcrumbFixed;
    }

    /**
     * 配置——窄屏.
     *
     * @return the petty
     */
    public boolean isPetty() {
        return petty;
    }

    /**
     * 配置——窄屏.
     *
     * @param petty the petty to set
     */
    public void setPetty(boolean petty) {
        this.petty = petty;
    }

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getLinkTel() {
		return linkTel;
	}

	public void setLinkTel(String linkTel) {
		this.linkTel = linkTel;
	}

//
//	public String getPosition() {
//		return position;
//	}
//
//	public void setPosition(String position) {
//		this.position = position;
//	}

	public String getPersonType() {
		return personType;
	}

	public void setPersonType(String personType) {
		this.personType = personType;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getHeadImg() {
		return headImg;
	}

	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}

//	public String getCompanyType() {
//		return companyType;
//	}
//
//	public String getWorkNum() {
//		return workNum;
//	}
//
//	public void setWorkNum(String workNum) {
//		this.workNum = workNum;
//	}
//
//	public void setCompanyType(String companyType) {
//		this.companyType = companyType;
//	}
//
//	public Integer getLineType() {
//		return lineType;
//	}
//
//	public void setLineType(Integer lineType) {
//		this.lineType = lineType;
//	}
//
//	public String getCountyFranchiseesId() {
//		return countyFranchiseesId;
//	}
//
//	public void setCountyFranchiseesId(String countyFranchiseesId) {
//		this.countyFranchiseesId = countyFranchiseesId;
//	}
//	

}
